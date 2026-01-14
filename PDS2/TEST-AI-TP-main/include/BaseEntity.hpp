#ifndef BASE_ENTITY_HPP
#define BASE_ENTITY_HPP

#include <string>
#include <stdexcept>

/**
 * @file BaseEntity.hpp
 * @brief Base class for all marketplace entities
 * @author Equipe de Desenvolvimento
 * @date 2025
 */

/**
 * @class MarketplaceException
 * @brief Custom exception class for marketplace operations
 */
class MarketplaceException : public std::exception {
private:
    std::string message;
    
public:
    /**
     * @brief Constructor with error message
     * @param msg Error message
     */
    explicit MarketplaceException(const std::string& msg) : message(msg) {}
    
    /**
     * @brief Get error message
     * @return Error message
     */
    const char* what() const noexcept override {
        return message.c_str();
    }
};

/**
 * @class FileException
 * @brief Exception for file operations
 */
class FileException : public MarketplaceException {
public:
    explicit FileException(const std::string& msg) 
        : MarketplaceException("File Error: " + msg) {}
};

/**
 * @class ValidationException
 * @brief Exception for validation errors
 */
class ValidationException : public MarketplaceException {
public:
    explicit ValidationException(const std::string& msg) 
        : MarketplaceException("Validation Error: " + msg) {}
};

/**
 * @class BaseEntity
 * @brief Abstract base class for all marketplace entities
 * 
 * This class provides common functionality for all entities in the marketplace
 * system, including ID management, validation, and serialization.
 */
class BaseEntity {
protected:
    int id; ///< Unique identifier for the entity

public:
    /**
     * @brief Default constructor
     */
    BaseEntity() : id(0) {}
    
    /**
     * @brief Constructor with ID
     * @param id Entity ID
     */
    explicit BaseEntity(int id) : id(id) {}
    
    /**
     * @brief Virtual destructor
     */
    virtual ~BaseEntity() = default;
    
    /**
     * @brief Get entity ID
     * @return Entity ID
     */
    virtual int getId() const { return id; }
    
    /**
     * @brief Set entity ID
     * @param newId New ID value
     */
    virtual void setId(int newId) { 
        if (newId < 0) {
            throw ValidationException("ID cannot be negative");
        }
        id = newId; 
    }
    
    /**
     * @brief Pure virtual method for entity validation
     * @throws ValidationException if entity is invalid
     */
    virtual void validate() const = 0;
    
    /**
     * @brief Pure virtual method for serialization
     * @return String representation of the entity
     */
    virtual std::string toString() const = 0;
    
    /**
     * @brief Virtual method for getting entity type
     * @return Entity type name
     */
    virtual std::string getEntityType() const = 0;
};

#endif
