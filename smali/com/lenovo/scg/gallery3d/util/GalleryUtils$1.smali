.class final Lcom/lenovo/scg/gallery3d/util/GalleryUtils$1;
.super Ljava/lang/Object;
.source "GalleryUtils.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->fakeBusy(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cv:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/util/GalleryUtils$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/GalleryUtils$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 220
    return-void
.end method
