.class public Lcom/lenovo/scg/gallery3d/facepretty/data/WomanFacePrettyParam;
.super Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;
.source "WomanFacePrettyParam.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;-><init>()V

    .line 8
    const/16 v0, 0x28

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;->mSkinBrightLevel:I

    .line 9
    const/16 v0, 0x14

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;->mSlenderFaceLevel:I

    .line 10
    const/16 v0, 0x32

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;->mEyeEnlargmentLevel:I

    .line 11
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;->mSkinSoftenLevel:I

    .line 13
    return-void
.end method
