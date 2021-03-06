.class public Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;,
        Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateContent;,
        Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$GetUpdateInfo;,
        Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$UpdateInfo;,
        Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$MySourceListener;,
        Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;
    }
.end annotation


# static fields
.field private static final DATA_CACHE_SIZE:I = 0x3e8

.field private static final MAX_LOAD_COUNT:I = 0x40

.field private static final MIN_LOAD_COUNT:I = 0x20

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AlbumDataAdapter"


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private mDataListener:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;

.field private mFailedVersion:J

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/lenovo/scg/gallery3d/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private final mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mSourceListener:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$MySourceListener;

.field private mSourceVersion:J


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 5
    .param p1, "context"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "mediaSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    const/16 v4, 0x3e8

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    .line 70
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    .line 72
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentStart:I

    .line 74
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    .line 78
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    .line 82
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I

    .line 86
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$MySourceListener;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$MySourceListener;

    .line 93
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mFailedVersion:J

    .line 96
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 98
    new-array v0, v4, [Lcom/lenovo/scg/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 99
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    .line 100
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 104
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$1;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$1;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)Lcom/lenovo/scg/gallery3d/app/LoadingListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mLoadingListener:Lcom/lenovo/scg/gallery3d/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    return v0
.end method

.method static synthetic access$1002(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1202(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)[J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    return v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    .param p1, "x1"    # Ljava/util/concurrent/Callable;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mFailedVersion:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    .param p1, "x1"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mFailedVersion:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    .param p1, "x1"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I

    return v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I

    return p1
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)[J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentStart:I

    return v0
.end method

.method private clearSlot(I)V
    .locals 4
    .param p1, "slotIndex"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    aput-wide v2, v0, p1

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    aput-wide v2, v0, p1

    .line 184
    return-void
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 250
    .local v1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 254
    :goto_0
    return-object v2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 256
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private setContentWindow(II)V
    .locals 7
    .param p1, "contentStart"    # I
    .param p2, "contentEnd"    # I

    .prologue
    .line 187
    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentStart:I

    if-ne p1, v6, :cond_1

    iget v6, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    if-ne p2, v6, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    .line 189
    .local v0, "end":I
    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentStart:I

    .line 192
    .local v5, "start":I
    monitor-enter p0

    .line 193
    :try_start_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentStart:I

    .line 194
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    .line 195
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    .line 197
    .local v2, "itemVersion":[J
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    .line 198
    .local v4, "setVersion":[J
    if-ge p1, v0, :cond_2

    if-lt v5, p2, :cond_3

    .line 199
    :cond_2
    move v1, v5

    .local v1, "i":I
    move v3, v0

    .local v3, "n":I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 200
    rem-int/lit16 v6, v1, 0x3e8

    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    .end local v1    # "i":I
    .end local v2    # "itemVersion":[J
    .end local v3    # "n":I
    .end local v4    # "setVersion":[J
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 203
    .restart local v2    # "itemVersion":[J
    .restart local v4    # "setVersion":[J
    :cond_3
    move v1, v5

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 204
    rem-int/lit16 v6, v1, 0x3e8

    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 206
    :cond_4
    move v1, p2

    move v3, v0

    .restart local v3    # "n":I
    :goto_3
    if-ge v1, v3, :cond_5

    .line 207
    rem-int/lit16 v6, v1, 0x3e8

    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 210
    :cond_5
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method


# virtual methods
.method public findItem(Lcom/lenovo/scg/gallery3d/data/Path;)I
    .locals 4
    .param p1, "id"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 171
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentStart:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    if-ge v0, v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    rem-int/lit16 v3, v0, 0x3e8

    aget-object v1, v2, v3

    .line 173
    .local v1, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 177
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :goto_1
    return v0

    .line 171
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public get(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getActiveStart()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    return v0
.end method

.method public isActive(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 161
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;->terminate()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->removeContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 136
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSource:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSourceListener:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->addContentListener(Lcom/lenovo/scg/gallery3d/data/ContentListener;)V

    .line 128
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;-><init>(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$ReloadTask;->start()V

    .line 130
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 214
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    array-length v5, v5

    if-gt v3, v5, :cond_3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 218
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mData:[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    array-length v2, v3

    .line 219
    .local v2, "length":I
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    .line 220
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    .line 223
    if-eq p1, p2, :cond_0

    .line 225
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 226
    .local v1, "contentStart":I
    add-int v3, v1, v2

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 227
    .local v0, "contentEnd":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    if-lt v3, p2, :cond_2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    .line 228
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->setContentWindow(II)V

    goto :goto_0

    .end local v0    # "contentEnd":I
    .end local v1    # "contentStart":I
    .end local v2    # "length":I
    :cond_3
    move v3, v4

    .line 216
    goto :goto_1
.end method

.method public setDataListener(Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader$DataListener;

    .line 242
    return-void
.end method

.method public setLoadingListener(Lcom/lenovo/scg/gallery3d/app/LoadingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/app/LoadingListener;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mLoadingListener:Lcom/lenovo/scg/gallery3d/app/LoadingListener;

    .line 246
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;->mSize:I

    return v0
.end method
