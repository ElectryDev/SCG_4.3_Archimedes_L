.class public Lcn/jingling/lib/filters/onekey/CameraDanya;
.super Lcn/jingling/lib/filters/onekey/CurveFilter;
.source "CameraDanya.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcn/jingling/lib/filters/onekey/CurveFilter;-><init>()V

    .line 6
    const-string v0, "curves/cdanya.dat"

    iput-object v0, p0, Lcn/jingling/lib/filters/onekey/CameraDanya;->mPath:Ljava/lang/String;

    .line 7
    return-void
.end method