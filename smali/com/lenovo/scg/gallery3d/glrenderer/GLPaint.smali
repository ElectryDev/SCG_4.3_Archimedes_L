.class public Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;
.super Ljava/lang/Object;
.source "GLPaint.java"


# instance fields
.field private mColor:I

.field private mLineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;->mLineWidth:F

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;->mColor:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;->mColor:I

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;->mLineWidth:F

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;->mColor:I

    .line 29
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 36
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 37
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLPaint;->mLineWidth:F

    .line 38
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method