.class public Le/i/b/z1/v$a;
.super Le/i/b/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/z1/v;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Le/i/b/z1/v;


# direct methods
.method public constructor <init>(Le/i/b/z1/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/z1/v$a;->c:Le/i/b/z1/v;

    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/i/b/z1/v$a;->c:Le/i/b/z1/v;

    .line 2
    iget-object v1, v0, Le/i/b/z1/v;->b:Le/i/b/z1/h0;

    .line 3
    iget-object v0, v0, Le/i/b/z1/v;->a:Le/i/b/z1/b0;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Le/i/b/z1/b0;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/i/b/z1/x;

    .line 6
    invoke-virtual {v3}, Le/i/b/z1/x;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Le/i/b/z1/h0;->a(Le/i/b/z1/b0;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
