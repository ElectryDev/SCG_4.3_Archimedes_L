.class Lcom/weibo/sdk/android/net/AsyncWeiboRunner$2;
.super Ljava/lang/Thread;
.source "AsyncWeiboRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weibo/sdk/android/net/AsyncWeiboRunner;->request4Binary(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$httpMethod:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/weibo/sdk/android/net/RequestListener;

.field private final synthetic val$params:Lcom/weibo/sdk/android/WeiboParameters;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$2;->val$httpMethod:Ljava/lang/String;

    iput-object p3, p0, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$2;->val$params:Lcom/weibo/sdk/android/WeiboParameters;

    iput-object p4, p0, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$2;->val$listener:Lcom/weibo/sdk/android/net/RequestListener;

    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$2;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$2;->val$httpMethod:Ljava/lang/String;

    iget-object v4, p0, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$2;->val$params:Lcom/weibo/sdk/android/WeiboParameters;

    .line 51
    iget-object v5, p0, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$2;->val$params:Lcom/weibo/sdk/android/WeiboParameters;

    const-string/jumbo v6, "pic"

    invoke-virtual {v5, v6}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {v2, v3, v4, v5}, Lcom/weibo/sdk/android/net/HttpManager;->openUrl4Binary(Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 52
    .local v1, "resp":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$2;->val$listener:Lcom/weibo/sdk/android/net/RequestListener;

    invoke-interface {v2, v1}, Lcom/weibo/sdk/android/net/RequestListener;->onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "resp":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lcom/weibo/sdk/android/WeiboException;
    iget-object v2, p0, Lcom/weibo/sdk/android/net/AsyncWeiboRunner$2;->val$listener:Lcom/weibo/sdk/android/net/RequestListener;

    invoke-interface {v2, v0}, Lcom/weibo/sdk/android/net/RequestListener;->onError(Lcom/weibo/sdk/android/WeiboException;)V

    goto :goto_0
.end method
