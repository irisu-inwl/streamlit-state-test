import streamlit as st


def main():
    st.title('Counter App')
    count = 0
    increment_count = st.button('count +')
    decrement_count = st.button('count -')
    if increment_count:
        count += 1
    if decrement_count:
        count -= 1
    
    st.write(f'count: {count}')


if __name__ == '__main__':
    main()