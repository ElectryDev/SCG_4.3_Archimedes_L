.class final Lcom/lenovo/scg/camera/CameraUtil$1;
.super Ljava/lang/Object;
.source "CameraUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$finish:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/CameraUtil$1;->val$finish:Z

    iput-object p2, p0, Lcom/lenovo/scg/camera/CameraUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/CameraUtil$1;->val$finish:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraUtil$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 404
    :cond_0
    return-void
.end method
