#include <stdint.h>

typedef enum { FP64 = 8, FP32 = 4, FP16 = 2, FP8 = 1 } precision_t;

typedef struct conv_layer_struct {
    // CONV2D
    uint32_t CO;
    uint32_t CI;
    uint32_t IH;
    uint32_t IW;
    uint32_t OH;
    uint32_t OW;
    uint32_t FH;
    uint32_t FW;
    uint32_t pad;

    double *ifmap;
    double *weights;
    double *ofmap;

    uint32_t TILE_CI;
    uint32_t cluster2cluster;
    uint32_t im2col;

    // BATCHNORM
    double *gamma;
    double *beta;

    precision_t dtype;
} conv_layer;