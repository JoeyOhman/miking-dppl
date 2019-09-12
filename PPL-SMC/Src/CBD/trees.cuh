#ifndef TREES_INCLUDED
#define TREES_INCLUDED

const int ROOT_IDX = 0;

/* TREES without */

/*
// simple toy tree, nodes: 7, maxDepth: 3
const int NUM_NODES = 7;
const int MAX_DEPTH = 3;
struct tree_t {
                                    //   0, 1, 2, 3, 4, 5, 6  parent could possibly be found with formula?
    const floating_t ages[NUM_NODES] =  {10, 6, 4,  0,  0,  0,  0};
    const int idxLeft[NUM_NODES] =      {1,  3, 5, -1, -1, -1, -1};
    const int idxRight[NUM_NODES] =     {2,  4, 6, -1, -1, -1, -1};
};
*/


/*
// TimeTree, pitheciidae monkeys (source: http://timetree.org/), nodes: 55, maxDepth: 9
const int NUM_NODES = 55;
const int MAX_DEPTH = 9;
struct tree_t {
    const floating_t ages[NUM_NODES] =  {17.993216 , 11.330548 , 11.016198 , 5.4853 , 7.31 , 10.237967 , 4.4329 , 0 , 2.9571 , 3.19694 , 7.11 , 6.1354 , 8.34 , 0 , 2.6 , 0 , 0 , 0 , 1.1078 , 0 , 5.9 , 3.04517 , 5.69232 , 0 , 4.88882 , 0 , 0 , 0.02283 , 0 , 3.2838 , 0 , 2.2398 , 0 , 4.3404 , 0 , 2.0967 , 0 , 0 , 0 , 2.9942 , 0 , 1.72 , 0 , 2.81 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 1.33 , 0 , 0 , 0};
    const int idxLeft[NUM_NODES] =      {1 , 3 , 5 , 7 , 9 , 11 , 13 , -1 , 15 , 17 , 19 , 21 , 23 , -1 , 25 , -1 , -1 , -1 , 27 , -1 , 29 , 31 , 33 , -1 , 35 , -1 , -1 , 37 , -1 , 39 , -1 , 41 , -1 , 43 , -1 , 45 , -1 , -1 , -1 , 47 , -1 , 49 , -1 , 51 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 53 , -1 , -1 , -1};
    const int idxRight[NUM_NODES] =     {2 , 4 , 6 , 8 , 10 , 12 , 14 , -1 , 16 , 18 , 20 , 22 , 24 , -1 , 26 , -1 , -1 , -1 , 28 , -1 , 30 , 32 , 34 , -1 , 36 , -1 , -1 , 38 , -1 , 40 , -1 , 42 , -1 , 44 , -1 , 46 , -1 , -1 , -1 , 48 , -1 , 50 , -1 , 52 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 54 , -1 , -1 , -1};
    const int idxParent[NUM_NODES] =    {-1 , 0 , 0 , 1 , 1 , 2 , 2 , 3 , 3 , 4 , 4 , 5 , 5 , 6 , 6 , 8 , 8 , 9 , 9 , 10 , 10 , 11 , 11 , 12 , 12 , 14 , 14 , 18 , 18 , 20 , 20 , 21 , 21 , 22 , 22 , 24 , 24 , 27 , 27 , 29 , 29 , 31 , 31 , 33 , 33 , 35 , 35 , 39 , 39 , 41 , 41 , 43 , 43 , 51 , 51};
    const int idxNext[NUM_NODES] =      {1 , 3 , 5 , 7 , 9 , 11 , 13 , 8 , 15 , 17 , 19 , 21 , 23 , 14 , 25 , 16 , 4 , 18 , 27 , 20 , 29 , 31 , 33 , 24 , 35 , 26 , -1 , 37 , 10 , 39 , 2 , 41 , 22 , 43 , 12 , 45 , 6 , 38 , 28 , 47 , 30 , 49 , 32 , 51 , 34 , 46 , 36 , 48 , 40 , 50 , 42 , 53 , 44 , 54 , 52};
};
*/


/*
// Bisse tree, nodes: 63, maxDepth: 9
const int NUM_NODES = 63;
const int MAX_DEPTH = 9;
struct tree_t {
    const floating_t ages[NUM_NODES] =  {13.016 , 10.626 , 8.958 , 8.352 , 10.536 , 3.748 , 7.775 , 7.679 , 7.361 , 8.291 , 8.192 , 0 , 0.0033 , 0.0584 , 1.589 , 5.187 , 5.196 , 3.818 , 1.868 , 1.396 , 0 , 0.056 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 4.871 , 1.143 , 1.813 , 0.0866 , 1.06 , 0.0215 , 0 , 0 , 0 , 2.601 , 0 , 0.0829 , 0 , 0.0452 , 0 , 0 , 0.0001 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0.0203 , 0 , 0 , 0 , 0 , 0};
    const int idxLeft[NUM_NODES] =      {1 , 3 , 5 , 7 , 9 , 11 , 13 , 15 , 17 , 19 , 21 , -1 , 23 , 25 , 27 , 29 , 31 , 33 , 35 , 37 , -1 , 39 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 41 , 43 , 45 , 47 , 49 , 51 , -1 , -1 , -1 , 53 , -1 , 55 , -1 , 57 , -1 , -1 , 59 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 61 , -1 , -1 , -1 , -1 , -1};
    const int idxRight[NUM_NODES] =     {2 , 4 , 6 , 8 , 10 , 12 , 14 , 16 , 18 , 20 , 22 , -1 , 24 , 26 , 28 , 30 , 32 , 34 , 36 , 38 , -1 , 40 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 42 , 44 , 46 , 48 , 50 , 52 , -1 , -1 , -1 , 54 , -1 , 56 , -1 , 58 , -1 , -1 , 60 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 62 , -1 , -1 , -1 , -1 , -1};
};
*/

/*
// Cetacean tree, nodes: 174, maxDepth: 20
const int NUM_NODES = 174;
const int MAX_DEPTH = 20;
struct tree_t {
    const floating_t ages[NUM_NODES] =  {40 , 35.4248 , 27.8341 , 33.4157 , 8.57687 , 25.8432 , 22.167 , 32.3769 , 0 , 1.27866 , 0 , 18.0947 , 0 , 8.85313 , 0.335479 , 31.7146 , 0 , 0.188389 , 0 , 16.169 , 0 , 0 , 0 , 0 , 19.0147 , 25.7272 , 0 , 0 , 15.2139 , 12.9642 , 0 , 17.8581 , 24.3338 , 17.5865 , 5.36058 , 10.6031 , 0 , 11.4896 , 6.34314 , 15.5499 , 0 , 18.2519 , 13.6965 , 10.5348 , 0 , 0 , 0 , 0 , 0 , 5.34343 , 0 , 0 , 0 , 14.393 , 0 , 0 , 5.12629 , 5.30772 , 0 , 9.37282 , 0 , 4.38115 , 11.0056 , 12.9165 , 0 , 0 , 4.60801 , 4.66373 , 8.1714 , 8.65426 , 0 , 0 , 0 , 8.05967 , 0 , 11.0576 , 0 , 3.71002 , 0 , 3.38146 , 0 , 5.99285 , 0 , 8.06569 , 0 , 0 , 0 , 8.94251 , 0 , 0 , 0 , 0 , 0 , 5.41429 , 6.86684 , 7.40827 , 0 , 8.23509 , 0 , 4.38744 , 0 , 5.19829 , 5.81486 , 4.26573 , 0 , 7.71938 , 0 , 2.97717 , 1.29976 , 4.48887 , 0 , 3.06089 , 3.31117 , 3.49202 , 0 , 7.20224 , 0 , 1.4389 , 0 , 0 , 3.21317 , 3.71631 , 0 , 0 , 0 , 0 , 2.92089 , 2.71917 , 4.77541 , 6.36511 , 0 , 0 , 0 , 1.73918 , 0 , 2.81775 , 0 , 2.0869 , 0 , 1.81976 , 0 , 4.19742 , 0 , 5.78569 , 0 , 0 , 0 , 1.98318 , 0 , 0 , 0 , 1.36833 , 0 , 0 , 4.89284 , 5.07855 , 0 , 1.46919 , 0.859479 , 1.10919 , 0 , 0 , 0 , 4.11628 , 0 , 0 , 0 , 0 , 0 , 0.786909 , 0 , 0 , 0 , 0};
    const int idxLeft[NUM_NODES] =      {1 , 2 , 4 , 6 , 8 , 10 , 12 , 14 , -1 , 16 , -1 , 18 , -1 , 20 , 22 , 24 , -1 , 26 , -1 , 28 , -1 , -1 , -1 , -1 , 30 , 32 , -1 , -1 , 34 , 36 , -1 , 38 , 40 , 42 , 44 , 46 , -1 , 48 , 50 , 52 , -1 , 54 , 56 , 58 , -1 , -1 , -1 , -1 , -1 , 60 , -1 , -1 , -1 , 62 , -1 , -1 , 64 , 66 , -1 , 68 , -1 , 70 , 72 , 74 , -1 , -1 , 76 , 78 , 80 , 82 , -1 , -1 , -1 , 84 , -1 , 86 , -1 , 88 , -1 , 90 , -1 , 92 , -1 , 94 , -1 , -1 , -1 , 96 , -1 , -1 , -1 , -1 , -1 , 98 , 100 , 102 , -1 , 104 , -1 , 106 , -1 , 108 , 110 , 112 , -1 , 114 , -1 , 116 , 118 , 120 , -1 , 122 , 124 , 126 , -1 , 128 , -1 , 130 , -1 , -1 , 132 , 134 , -1 , -1 , -1 , -1 , 136 , 138 , 140 , 142 , -1 , -1 , -1 , 144 , -1 , 146 , -1 , 148 , -1 , 150 , -1 , 152 , -1 , 154 , -1 , -1 , -1 , 156 , -1 , -1 , -1 , 158 , -1 , -1 , 160 , 162 , -1 , 164 , 166 , 168 , -1 , -1 , -1 , 170 , -1 , -1 , -1 , -1 , -1 , 172 , -1 , -1 , -1 , -1};
    const int idxRight[NUM_NODES] =     {-1 , 3 , 5 , 7 , 9 , 11 , 13 , 15 , -1 , 17 , -1 , 19 , -1 , 21 , 23 , 25 , -1 , 27 , -1 , 29 , -1 , -1 , -1 , -1 , 31 , 33 , -1 , -1 , 35 , 37 , -1 , 39 , 41 , 43 , 45 , 47 , -1 , 49 , 51 , 53 , -1 , 55 , 57 , 59 , -1 , -1 , -1 , -1 , -1 , 61 , -1 , -1 , -1 , 63 , -1 , -1 , 65 , 67 , -1 , 69 , -1 , 71 , 73 , 75 , -1 , -1 , 77 , 79 , 81 , 83 , -1 , -1 , -1 , 85 , -1 , 87 , -1 , 89 , -1 , 91 , -1 , 93 , -1 , 95 , -1 , -1 , -1 , 97 , -1 , -1 , -1 , -1 , -1 , 99 , 101 , 103 , -1 , 105 , -1 , 107 , -1 , 109 , 111 , 113 , -1 , 115 , -1 , 117 , 119 , 121 , -1 , 123 , 125 , 127 , -1 , 129 , -1 , 131 , -1 , -1 , 133 , 135 , -1 , -1 , -1 , -1 , 137 , 139 , 141 , 143 , -1 , -1 , -1 , 145 , -1 , 147 , -1 , 149 , -1 , 151 , -1 , 153 , -1 , 155 , -1 , -1 , -1 , 157 , -1 , -1 , -1 , 159 , -1 , -1 , 161 , 163 , -1 , 165 , 167 , 169 , -1 , -1 , -1 , 171 , -1 , -1 , -1 , -1 , -1 , 173 , -1 , -1 , -1 , -1};
    const int idxParent[NUM_NODES] =    {-1 , 0 , 1 , 1 , 2 , 2 , 3 , 3 , 4 , 4 , 5 , 5 , 6 , 6 , 7 , 7 , 9 , 9 , 11 , 11 , 13 , 13 , 14 , 14 , 15 , 15 , 17 , 17 , 19 , 19 , 24 , 24 , 25 , 25 , 28 , 28 , 29 , 29 , 31 , 31 , 32 , 32 , 33 , 33 , 34 , 34 , 35 , 35 , 37 , 37 , 38 , 38 , 39 , 39 , 41 , 41 , 42 , 42 , 43 , 43 , 49 , 49 , 53 , 53 , 56 , 56 , 57 , 57 , 59 , 59 , 61 , 61 , 62 , 62 , 63 , 63 , 66 , 66 , 67 , 67 , 68 , 68 , 69 , 69 , 73 , 73 , 75 , 75 , 77 , 77 , 79 , 79 , 81 , 81 , 83 , 83 , 87 , 87 , 93 , 93 , 94 , 94 , 95 , 95 , 97 , 97 , 99 , 99 , 101 , 101 , 102 , 102 , 103 , 103 , 105 , 105 , 107 , 107 , 108 , 108 , 109 , 109 , 111 , 111 , 112 , 112 , 113 , 113 , 115 , 115 , 117 , 117 , 120 , 120 , 121 , 121 , 126 , 126 , 127 , 127 , 128 , 128 , 129 , 129 , 133 , 133 , 135 , 135 , 137 , 137 , 139 , 139 , 141 , 141 , 143 , 143 , 147 , 147 , 151 , 151 , 154 , 154 , 155 , 155 , 157 , 157 , 158 , 158 , 159 , 159 , 163 , 163 , 169 , 169};
};
*/


// Primate tree, nodes: 465, maxDepth: 20
const int NUM_NODES = 465;
const int MAX_DEPTH = 18;
struct tree_t {
    const floating_t ages[NUM_NODES] =  {65.0917 , 51.8705 , 62.6001 , 20.9224 , 39.4824 , 35.1825 , 51.225 , 8.5207 , 16.3413 , 0 , 27.5162 , 15.3009 , 8.68355 , 30.1522 , 32.417 , 3.64498 , 7.32733 , 4.70363 , 9.20057 , 22.0348 , 17.0354 , 0.257424 , 0 , 0 , 0 , 25.3163 , 25.6929 , 19.6369 , 18.3368 , 0 , 1.44986 , 3.5741 , 6.31619 , 0 , 1.88177 , 0 , 2.67248 , 17.1722 , 13.6168 , 0 , 11.4707 , 0 , 0 , 20.9726 , 20.6835 , 23.1866 , 22.0289 , 15.8446 , 5.87586 , 13.6067 , 11.2546 , 0 , 0 , 0 , 0 , 5.40351 , 4.24264 , 0 , 0 , 0 , 0 , 11.1999 , 13.0595 , 0 , 7.43524 , 7.05337 , 9.40047 , 11.8807 , 16.4714 , 12.7299 , 11.2865 , 7.26239 , 8.42087 , 15.7873 , 18.9876 , 0 , 6.41449 , 4.01158 , 4.01897 , 8.89218 , 11.9581 , 9.24085 , 8.28299 , 0 , 2.36434 , 0 , 0 , 0 , 7.6009 , 6.22907 , 11.8927 , 0 , 5.87983 , 0 , 4.09979 , 0 , 0 , 8.12242 , 10.2338 , 0 , 13.303 , 0.502263 , 6.92635 , 4.69295 , 9.03084 , 3.96378 , 0.141184 , 0 , 6.82414 , 3.41619 , 11.7461 , 18.377 , 15.6463 , 0 , 5.0674 , 0 , 3.53901 , 0 , 1.80653 , 8.8866 , 3.48386 , 5.26084 , 6.03735 , 6.71001 , 7.49111 , 0 , 6.74964 , 1.46116 , 0 , 0 , 5.02863 , 0 , 5.66245 , 0 , 6.37658 , 0 , 1.54142 , 0 , 2.73742 , 3.68845 , 3.70051 , 0 , 6.54958 , 7.32881 , 10.3035 , 0 , 0 , 0 , 4.52731 , 3.0384 , 2.88507 , 0 , 2.92191 , 0 , 0 , 0 , 0 , 0 , 3.94301 , 0 , 0 , 4.52272 , 8.66891 , 0 , 11.365 , 7.67865 , 12.6827 , 0 , 1.95369 , 3.51683 , 2.02926 , 0 , 0.788242 , 6.92967 , 8.00142 , 0 , 0 , 3.49501 , 4.31325 , 0 , 3.49057 , 5.44218 , 2.22804 , 0 , 6.25647 , 0 , 5.7251 , 0 , 0 , 0 , 3.00293 , 5.34291 , 0 , 3.07403 , 3.75691 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 3.78989 , 0 , 3.08581 , 0 , 8.00036 , 0 , 2.9471 , 0 , 2.03735 , 0 , 0 , 0 , 0 , 0 , 1.76531 , 0 , 0 , 0 , 6.28987 , 3.70601 , 11.2002 , 0 , 6.62527 , 7.8782 , 9.81877 , 0 , 0 , 0 , 3.10084 , 0 , 0.881927 , 0 , 0 , 6.80864 , 6.5521 , 0 , 3.87109 , 0 , 0 , 0 , 1.75508 , 0 , 0.805245 , 1.96589 , 2.3131 , 0 , 1.54275 , 3.58071 , 4.43266 , 5.18071 , 4.91227 , 0 , 1.36316 , 0 , 0 , 0 , 0 , 0 , 3.68402 , 0 , 1.75563 , 0.655408 , 0 , 4.72442 , 5.32729 , 0 , 1.75869 , 0 , 1.215 , 0 , 0 , 0 , 4.1643 , 0 , 2.0792 , 3.43336 , 0.510546 , 0 , 3.83734 , 3.27913 , 3.30921 , 0 , 7.67803 , 0 , 0 , 0 , 0 , 5.1224 , 0 , 3.80739 , 5.19939 , 0 , 2.60969 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0.503238 , 0 , 0 , 2.64826 , 2.24477 , 2.801 , 2.2296 , 0 , 0 , 0.841441 , 4.21532 , 0.453228 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 1.98277 , 2.35055 , 2.32372 , 0.793145 , 0 , 0 , 0 , 0 , 2.63152 , 0 , 0 , 0 , 0 , 0.265543 , 0.256348 , 0 , 0 , 0 , 0 , 0 , 0 , 4.38689 , 5.07992 , 0 , 3.73466 , 1.89428 , 0 , 0 , 0 , 0 , 1.03785 , 0 , 0 , 0.135277 , 1.65329 , 0 , 0 , 0 , 1.70814 , 0 , 0.912748 , 0 , 0.00861709 , 0 , 3.63333 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 1.23779 , 0 , 0 , 0 , 0 , 0 , 1.95379 , 0 , 3.03886 , 0 , 2.89694 , 0 , 1.58886 , 0 , 0 , 0 , 0 , 0 , 0 , 0.716125 , 1.05538 , 0 , 0.269011 , 0 , 0 , 2.55883 , 2.95357 , 0 , 0 , 0 , 0 , 0 , 1.3832 , 0 , 0.794848 , 0.220763 , 1.55073 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 1.24026 , 2.32297 , 1.23446 , 0 , 0 , 0 , 0.752118 , 0 , 0 , 0.527182 , 0.532444 , 0.786479 , 0.778254 , 1.70858 , 0.954775 , 0 , 0 , 0 , 0.69434 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 1.0323 , 0.753017 , 0 , 0 , 0 , 0 , 0.50272 , 0.488649 , 0 , 0 , 0 , 0 , 0 , 0};
    const int idxLeft[NUM_NODES] =      {1 , 3 , 5 , 7 , 9 , 11 , 13 , 15 , 17 , -1 , 19 , 21 , 23 , 25 , 27 , 29 , 31 , 33 , 35 , 37 , 39 , 41 , -1 , -1 , -1 , 43 , 45 , 47 , 49 , -1 , 51 , 53 , 55 , -1 , 57 , -1 , 59 , 61 , 63 , -1 , 65 , -1 , -1 , 67 , 69 , 71 , 73 , 75 , 77 , 79 , 81 , -1 , -1 , -1 , -1 , 83 , 85 , -1 , -1 , -1 , -1 , 87 , 89 , -1 , 91 , 93 , 95 , 97 , 99 , 101 , 103 , 105 , 107 , 109 , 111 , -1 , 113 , 115 , 117 , 119 , 121 , 123 , 125 , -1 , 127 , -1 , -1 , -1 , 129 , 131 , 133 , -1 , 135 , -1 , 137 , -1 , -1 , 139 , 141 , -1 , 143 , 145 , 147 , 149 , 151 , 153 , 155 , -1 , 157 , 159 , 161 , 163 , 165 , -1 , 167 , -1 , 169 , -1 , 171 , 173 , 175 , 177 , 179 , 181 , 183 , -1 , 185 , 187 , -1 , -1 , 189 , -1 , 191 , -1 , 193 , -1 , 195 , -1 , 197 , 199 , 201 , -1 , 203 , 205 , 207 , -1 , -1 , -1 , 209 , 211 , 213 , -1 , 215 , -1 , -1 , -1 , -1 , -1 , 217 , -1 , -1 , 219 , 221 , -1 , 223 , 225 , 227 , -1 , 229 , 231 , 233 , -1 , 235 , 237 , 239 , -1 , -1 , 241 , 243 , -1 , 245 , 247 , 249 , -1 , 251 , -1 , 253 , -1 , -1 , -1 , 255 , 257 , -1 , 259 , 261 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 263 , -1 , 265 , -1 , 267 , -1 , 269 , -1 , 271 , -1 , -1 , -1 , -1 , -1 , 273 , -1 , -1 , -1 , 275 , 277 , 279 , -1 , 281 , 283 , 285 , -1 , -1 , -1 , 287 , -1 , 289 , -1 , -1 , 291 , 293 , -1 , 295 , -1 , -1 , -1 , 297 , -1 , 299 , 301 , 303 , -1 , 305 , 307 , 309 , 311 , 313 , -1 , 315 , -1 , -1 , -1 , -1 , -1 , 317 , -1 , 319 , 321 , -1 , 323 , 325 , -1 , 327 , -1 , 329 , -1 , -1 , -1 , 331 , -1 , 333 , 335 , 337 , -1 , 339 , 341 , 343 , -1 , 345 , -1 , -1 , -1 , -1 , 347 , -1 , 349 , 351 , -1 , 353 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 355 , -1 , -1 , 357 , 359 , 361 , 363 , -1 , -1 , 365 , 367 , 369 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 371 , 373 , 375 , 377 , -1 , -1 , -1 , -1 , 379 , -1 , -1 , -1 , -1 , 381 , 383 , -1 , -1 , -1 , -1 , -1 , -1 , 385 , 387 , -1 , 389 , 391 , -1 , -1 , -1 , -1 , 393 , -1 , -1 , 395 , 397 , -1 , -1 , -1 , 399 , -1 , 401 , -1 , 403 , -1 , 405 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 407 , -1 , -1 , -1 , -1 , -1 , 409 , -1 , 411 , -1 , 413 , -1 , 415 , -1 , -1 , -1 , -1 , -1 , -1 , 417 , 419 , -1 , 421 , -1 , -1 , 423 , 425 , -1 , -1 , -1 , -1 , -1 , 427 , -1 , 429 , 431 , 433 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 435 , 437 , 439 , -1 , -1 , -1 , 441 , -1 , -1 , 443 , 445 , 447 , 449 , 451 , 453 , -1 , -1 , -1 , 455 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 457 , 459 , -1 , -1 , -1 , -1 , 461 , 463 , -1 , -1 , -1 , -1 , -1 , -1};
    const int idxRight[NUM_NODES] =     {2 , 4 , 6 , 8 , 10 , 12 , 14 , 16 , 18 , -1 , 20 , 22 , 24 , 26 , 28 , 30 , 32 , 34 , 36 , 38 , 40 , 42 , -1 , -1 , -1 , 44 , 46 , 48 , 50 , -1 , 52 , 54 , 56 , -1 , 58 , -1 , 60 , 62 , 64 , -1 , 66 , -1 , -1 , 68 , 70 , 72 , 74 , 76 , 78 , 80 , 82 , -1 , -1 , -1 , -1 , 84 , 86 , -1 , -1 , -1 , -1 , 88 , 90 , -1 , 92 , 94 , 96 , 98 , 100 , 102 , 104 , 106 , 108 , 110 , 112 , -1 , 114 , 116 , 118 , 120 , 122 , 124 , 126 , -1 , 128 , -1 , -1 , -1 , 130 , 132 , 134 , -1 , 136 , -1 , 138 , -1 , -1 , 140 , 142 , -1 , 144 , 146 , 148 , 150 , 152 , 154 , 156 , -1 , 158 , 160 , 162 , 164 , 166 , -1 , 168 , -1 , 170 , -1 , 172 , 174 , 176 , 178 , 180 , 182 , 184 , -1 , 186 , 188 , -1 , -1 , 190 , -1 , 192 , -1 , 194 , -1 , 196 , -1 , 198 , 200 , 202 , -1 , 204 , 206 , 208 , -1 , -1 , -1 , 210 , 212 , 214 , -1 , 216 , -1 , -1 , -1 , -1 , -1 , 218 , -1 , -1 , 220 , 222 , -1 , 224 , 226 , 228 , -1 , 230 , 232 , 234 , -1 , 236 , 238 , 240 , -1 , -1 , 242 , 244 , -1 , 246 , 248 , 250 , -1 , 252 , -1 , 254 , -1 , -1 , -1 , 256 , 258 , -1 , 260 , 262 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 264 , -1 , 266 , -1 , 268 , -1 , 270 , -1 , 272 , -1 , -1 , -1 , -1 , -1 , 274 , -1 , -1 , -1 , 276 , 278 , 280 , -1 , 282 , 284 , 286 , -1 , -1 , -1 , 288 , -1 , 290 , -1 , -1 , 292 , 294 , -1 , 296 , -1 , -1 , -1 , 298 , -1 , 300 , 302 , 304 , -1 , 306 , 308 , 310 , 312 , 314 , -1 , 316 , -1 , -1 , -1 , -1 , -1 , 318 , -1 , 320 , 322 , -1 , 324 , 326 , -1 , 328 , -1 , 330 , -1 , -1 , -1 , 332 , -1 , 334 , 336 , 338 , -1 , 340 , 342 , 344 , -1 , 346 , -1 , -1 , -1 , -1 , 348 , -1 , 350 , 352 , -1 , 354 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 356 , -1 , -1 , 358 , 360 , 362 , 364 , -1 , -1 , 366 , 368 , 370 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 372 , 374 , 376 , 378 , -1 , -1 , -1 , -1 , 380 , -1 , -1 , -1 , -1 , 382 , 384 , -1 , -1 , -1 , -1 , -1 , -1 , 386 , 388 , -1 , 390 , 392 , -1 , -1 , -1 , -1 , 394 , -1 , -1 , 396 , 398 , -1 , -1 , -1 , 400 , -1 , 402 , -1 , 404 , -1 , 406 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 408 , -1 , -1 , -1 , -1 , -1 , 410 , -1 , 412 , -1 , 414 , -1 , 416 , -1 , -1 , -1 , -1 , -1 , -1 , 418 , 420 , -1 , 422 , -1 , -1 , 424 , 426 , -1 , -1 , -1 , -1 , -1 , 428 , -1 , 430 , 432 , 434 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 436 , 438 , 440 , -1 , -1 , -1 , 442 , -1 , -1 , 444 , 446 , 448 , 450 , 452 , 454 , -1 , -1 , -1 , 456 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , -1 , 458 , 460 , -1 , -1 , -1 , -1 , 462 , 464 , -1 , -1 , -1 , -1 , -1 , -1};
    const int idxParent[NUM_NODES] =    {-1 , 0 , 0 , 1 , 1 , 2 , 2 , 3 , 3 , 4 , 4 , 5 , 5 , 6 , 6 , 7 , 7 , 8 , 8 , 10 , 10 , 11 , 11 , 12 , 12 , 13 , 13 , 14 , 14 , 15 , 15 , 16 , 16 , 17 , 17 , 18 , 18 , 19 , 19 , 20 , 20 , 21 , 21 , 25 , 25 , 26 , 26 , 27 , 27 , 28 , 28 , 30 , 30 , 31 , 31 , 32 , 32 , 34 , 34 , 36 , 36 , 37 , 37 , 38 , 38 , 40 , 40 , 43 , 43 , 44 , 44 , 45 , 45 , 46 , 46 , 47 , 47 , 48 , 48 , 49 , 49 , 50 , 50 , 55 , 55 , 56 , 56 , 61 , 61 , 62 , 62 , 64 , 64 , 65 , 65 , 66 , 66 , 67 , 67 , 68 , 68 , 69 , 69 , 70 , 70 , 71 , 71 , 72 , 72 , 73 , 73 , 74 , 74 , 76 , 76 , 77 , 77 , 78 , 78 , 79 , 79 , 80 , 80 , 81 , 81 , 82 , 82 , 84 , 84 , 88 , 88 , 89 , 89 , 90 , 90 , 92 , 92 , 94 , 94 , 97 , 97 , 98 , 98 , 100 , 100 , 101 , 101 , 102 , 102 , 103 , 103 , 104 , 104 , 105 , 105 , 106 , 106 , 108 , 108 , 109 , 109 , 110 , 110 , 111 , 111 , 112 , 112 , 114 , 114 , 116 , 116 , 118 , 118 , 119 , 119 , 120 , 120 , 121 , 121 , 122 , 122 , 123 , 123 , 124 , 124 , 126 , 126 , 127 , 127 , 130 , 130 , 132 , 132 , 134 , 134 , 136 , 136 , 138 , 138 , 139 , 139 , 140 , 140 , 142 , 142 , 143 , 143 , 144 , 144 , 148 , 148 , 149 , 149 , 150 , 150 , 152 , 152 , 158 , 158 , 161 , 161 , 162 , 162 , 164 , 164 , 165 , 165 , 166 , 166 , 168 , 168 , 169 , 169 , 170 , 170 , 172 , 172 , 173 , 173 , 174 , 174 , 177 , 177 , 178 , 178 , 180 , 180 , 181 , 181 , 182 , 182 , 184 , 184 , 186 , 186 , 190 , 190 , 191 , 191 , 193 , 193 , 194 , 194 , 204 , 204 , 206 , 206 , 208 , 208 , 210 , 210 , 212 , 212 , 218 , 218 , 222 , 222 , 223 , 223 , 224 , 224 , 226 , 226 , 227 , 227 , 228 , 228 , 232 , 232 , 234 , 234 , 237 , 237 , 238 , 238 , 240 , 240 , 244 , 244 , 246 , 246 , 247 , 247 , 248 , 248 , 250 , 250 , 251 , 251 , 252 , 252 , 253 , 253 , 254 , 254 , 256 , 256 , 262 , 262 , 264 , 264 , 265 , 265 , 267 , 267 , 268 , 268 , 270 , 270 , 272 , 272 , 276 , 276 , 278 , 278 , 279 , 279 , 280 , 280 , 282 , 282 , 283 , 283 , 284 , 284 , 286 , 286 , 291 , 291 , 293 , 293 , 294 , 294 , 296 , 296 , 304 , 304 , 307 , 307 , 308 , 308 , 309 , 309 , 310 , 310 , 313 , 313 , 314 , 314 , 315 , 315 , 324 , 324 , 325 , 325 , 326 , 326 , 327 , 327 , 332 , 332 , 337 , 337 , 338 , 338 , 345 , 345 , 346 , 346 , 348 , 348 , 349 , 349 , 354 , 354 , 357 , 357 , 358 , 358 , 362 , 362 , 364 , 364 , 366 , 366 , 368 , 368 , 380 , 380 , 386 , 386 , 388 , 388 , 390 , 390 , 392 , 392 , 399 , 399 , 400 , 400 , 402 , 402 , 405 , 405 , 406 , 406 , 412 , 412 , 414 , 414 , 415 , 415 , 416 , 416 , 424 , 424 , 425 , 425 , 426 , 426 , 430 , 430 , 433 , 433 , 434 , 434 , 435 , 435 , 436 , 436 , 437 , 437 , 438 , 438 , 442 , 442 , 451 , 451 , 452 , 452 , 457 , 457 , 458 , 458};
    const int idxNext[NUM_NODES] =      {1 , 3 , 5 , 7 , 9 , 11 , 13 , 15 , 17 , 10 , 19 , 21 , 23 , 25 , 27 , 29 , 31 , 33 , 35 , 37 , 39 , 41 , 12 , 24 , 6 , 43 , 45 , 47 , 49 , 30 , 51 , 53 , 55 , 34 , 57 , 36 , 59 , 61 , 63 , 40 , 65 , 42 , 22 , 67 , 69 , 71 , 73 , 75 , 77 , 79 , 81 , 52 , 16 , 54 , 32 , 83 , 85 , 58 , 18 , 60 , 4 , 87 , 89 , 64 , 91 , 93 , 95 , 97 , 99 , 101 , 103 , 105 , 107 , 109 , 111 , 76 , 113 , 115 , 117 , 119 , 121 , 123 , 125 , 84 , 127 , 86 , 8 , 88 , 129 , 131 , 133 , 92 , 135 , 94 , 137 , 96 , 2 , 139 , 141 , 100 , 143 , 145 , 147 , 149 , 151 , 153 , 155 , 108 , 157 , 159 , 161 , 163 , 165 , 114 , 167 , 116 , 169 , 118 , 171 , 173 , 175 , 177 , 179 , 181 , 183 , 126 , 185 , 187 , 56 , 130 , 189 , 132 , 191 , 134 , 193 , 136 , 195 , 138 , 197 , 199 , 201 , 142 , 203 , 205 , 207 , 146 , 102 , 148 , 209 , 211 , 213 , 152 , 215 , 154 , 106 , 156 , 72 , 158 , 217 , 160 , 110 , 219 , 221 , 164 , 223 , 225 , 227 , 168 , 229 , 231 , 233 , 172 , 235 , 237 , 239 , 176 , 80 , 241 , 243 , 180 , 245 , 247 , 249 , 184 , 251 , 186 , 253 , 188 , 128 , 190 , 255 , 257 , 90 , 259 , 261 , 196 , 20 , 198 , 66 , 200 , 140 , 202 , 98 , 204 , 263 , 206 , 265 , 208 , 267 , 210 , 269 , 212 , 271 , 214 , 104 , 216 , 26 , 218 , 273 , 220 , 162 , 222 , 275 , 277 , 279 , 226 , 281 , 283 , 285 , 230 , 48 , 232 , 287 , 234 , 289 , 236 , 28 , 291 , 293 , 240 , 295 , 242 , 178 , 244 , 297 , 246 , 299 , 301 , 303 , 250 , 305 , 307 , 309 , 311 , 313 , 256 , 315 , 258 , 192 , 260 , 194 , 262 , 317 , 264 , 319 , 321 , 144 , 323 , 325 , 270 , 327 , 272 , 329 , 274 , 46 , 276 , 331 , 278 , 333 , 335 , 337 , 282 , 339 , 341 , 343 , 286 , 345 , 288 , 170 , 290 , 78 , 347 , 238 , 349 , 351 , 296 , 353 , 298 , 122 , 300 , 50 , 302 , 248 , 304 , 355 , 306 , 124 , 357 , 359 , 361 , 363 , 312 , 254 , 365 , 367 , 369 , 62 , 318 , 38 , 320 , 68 , 322 , 266 , 324 , 371 , 373 , 375 , 377 , 70 , 330 , 150 , 332 , 379 , 334 , 224 , 336 , 280 , 381 , 383 , 340 , 166 , 342 , 284 , 344 , 228 , 385 , 387 , 348 , 389 , 391 , 294 , 352 , 174 , 354 , 393 , 356 , 182 , 395 , 397 , 360 , 252 , 362 , 399 , 364 , 401 , 366 , 403 , 368 , 405 , 370 , 316 , 372 , 268 , 374 , 326 , 376 , 44 , 378 , 328 , 380 , 407 , 382 , 338 , 384 , 112 , 386 , 409 , 388 , 411 , 390 , 413 , 392 , 415 , 394 , 120 , 396 , 358 , 398 , 308 , 417 , 419 , 402 , 421 , 404 , 314 , 423 , 425 , 408 , 74 , 410 , 346 , 412 , 427 , 414 , 429 , 431 , 433 , 418 , 400 , 420 , 310 , 422 , 82 , 424 , 435 , 437 , 439 , 428 , 14 , 430 , 441 , 432 , 416 , 443 , 445 , 447 , 449 , 451 , 453 , 440 , -1 , 442 , 455 , 444 , 434 , 446 , 350 , 448 , 436 , 450 , 406 , 457 , 459 , 454 , 426 , 456 , 292 , 461 , 463 , 460 , 438 , 462 , 458 , 464 , 452};
};


#endif