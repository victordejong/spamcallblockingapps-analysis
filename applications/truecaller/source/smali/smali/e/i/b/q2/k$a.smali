.class public final Le/i/b/q2/k$a;
.super Le/i/b/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/q2/k;->a(Ljava/lang/String;Le/i/b/q2/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/criteo/publisher/logging/RemoteLogRecords;

.field public final synthetic d:Le/i/b/q2/k;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/logging/RemoteLogRecords;Le/i/b/q2/k;)V
    .locals 0

    iput-object p1, p0, Le/i/b/q2/k$a;->c:Lcom/criteo/publisher/logging/RemoteLogRecords;

    iput-object p2, p0, Le/i/b/q2/k$a;->d:Le/i/b/q2/k;

    .line 1
    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/q2/k$a;->d:Le/i/b/q2/k;

    .line 2
    iget-object v0, v0, Le/i/b/q2/k;->b:Le/i/b/z1/u;

    .line 3
    iget-object v1, p0, Le/i/b/q2/k$a;->c:Lcom/criteo/publisher/logging/RemoteLogRecords;

    invoke-interface {v0, v1}, Le/i/b/z1/u;->a(Ljava/lang/Object;)Z

    return-void
.end method
