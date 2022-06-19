.class public Le/i/b/z1/v$f;
.super Le/i/b/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/z1/v;->a(Le/i/b/u2/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Le/i/b/u2/w;

.field public final synthetic d:Le/i/b/z1/v;


# direct methods
.method public constructor <init>(Le/i/b/z1/v;Le/i/b/u2/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/z1/v$f;->d:Le/i/b/z1/v;

    iput-object p2, p0, Le/i/b/z1/v$f;->c:Le/i/b/u2/w;

    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/z1/v$f;->c:Le/i/b/u2/w;

    invoke-virtual {v0}, Le/i/b/u2/w;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Le/i/b/z1/v$f;->c:Le/i/b/u2/w;

    invoke-virtual {v1}, Le/i/b/u2/w;->n()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Le/i/b/z1/v$f;->d:Le/i/b/z1/v;

    .line 4
    iget-object v1, v1, Le/i/b/z1/v;->a:Le/i/b/z1/b0;

    .line 5
    sget-object v2, Le/i/b/z1/e;->a:Le/i/b/z1/e;

    invoke-virtual {v1, v0, v2}, Le/i/b/z1/b0;->c(Ljava/lang/String;Le/i/b/z1/b0$a;)V

    return-void
.end method
