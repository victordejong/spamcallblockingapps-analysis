.class public Le/i/b/q2/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/q2/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/q2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Le/i/b/z1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/z1/u<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/i/b/z1/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/z1/u<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/q2/m$a;->a:Le/i/b/z1/u;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 5
    iget-object v0, p0, Le/i/b/q2/m$a;->a:Le/i/b/z1/u;

    invoke-interface {v0}, Le/i/b/z1/u;->a()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Le/i/b/q2/m$a;->a:Le/i/b/z1/u;

    invoke-interface {v0, p1}, Le/i/b/z1/u;->a(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/criteo/publisher/logging/RemoteLogRecords;

    const-string v0, "element"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/i/b/q2/m$a;->a:Le/i/b/z1/u;

    invoke-interface {v0, p1}, Le/i/b/z1/u;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
