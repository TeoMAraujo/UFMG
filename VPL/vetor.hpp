include <iostream>

template <typename T>
class vetor{
    T* vec;
    vetor(int n){
        vec = new T[n];
    } //constructor que atribui o endereço de n variaveis para o ponteiro acima
    vetor (T vec){
        this->vec = vec;
    } //constructor que recebe um elemento
    ~vetor(){
        for(int i = 0; i < *vec.size / T; i++){
            delete vec[i];
        } //destructor
    void SetElemento(int n, T x){
        vec[n] = x; // coloca x na posição n
    }
    T GetElemento(i){
        return vec[i]; // retorna elemento da posição i
    }
    void AdicionaElemento(T x){
        vec[*vec.size() / T - 1] = x; //elemento na ultima posição já que retona a quantidade de bits
    }
    void Imprime(){
        for(int i = 0; i < vetor.size()/ T ; i++){
            std::cout << vetor[i] " ";
        }
    }
}
