.class Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$4;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->finishGaussBlur()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$200(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$4;->this$0:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->access$200(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->finishGaussBlur()V

    .line 730
    :cond_0
    return-void
.end method