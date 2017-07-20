void global_func(){}
void global_func(int){}

class A{
public:
    A(){}
    int doint(float){
        return 99;
    }
    class NB{
        double getDouble(){
            return 88.8;
        }
    };
private:
    char priDoChar(){
        return 'A';
    }
};

int main(int argc,char**argv){

    A a;
    return 0;
}
