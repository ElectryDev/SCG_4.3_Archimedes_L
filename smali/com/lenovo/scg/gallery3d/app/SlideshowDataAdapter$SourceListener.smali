.class Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SourceListener;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$1;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SourceListener;-><init>(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mNeedReload:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$800(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    const/4 v2, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->mDataReady:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;->access$202(Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;Z)Z

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowDataAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 182
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
