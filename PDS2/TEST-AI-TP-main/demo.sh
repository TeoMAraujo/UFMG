#!/bin/bash

echo "=== MARKETPLACE SYSTEM DEMONSTRATION ==="
echo ""

# Build the project
echo "1. Building the project..."
make clean && make
echo ""

# Run tests
echo "2. Running unit tests..."
make test-manual
echo ""

# Show project structure
echo "3. Project structure:"
tree -I 'obj|bin' 2>/dev/null || find . -type f -name "*.hpp" -o -name "*.cpp" -o -name "*.txt" -o -name "Makefile" | grep -v obj | grep -v bin | sort
echo ""

# Show sample data
echo "4. Sample data files:"
echo ""
echo "Users (data/usuarios.txt):"
cat data/usuarios.txt 2>/dev/null || echo "No users file found"
echo ""
echo "Products (data/produtos.txt):"
cat data/produtos.txt 2>/dev/null || echo "No products file found"
echo ""
echo "Orders (data/pedidos.txt):"
cat data/pedidos.txt 2>/dev/null || echo "No orders file found"
echo ""

echo "5. To run the marketplace:"
echo "   ./bin/marketplace"
echo ""
echo "6. Login credentials:"
echo "   Admin: admin@admin.com / admin"
echo "   User1: joao@email.com / 123456"
echo "   User2: maria@email.com / 123456"
echo ""
echo "=== DEMO COMPLETE ==="
