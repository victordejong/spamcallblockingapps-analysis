.class public final synthetic Le/i/b/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/x2$a;


# instance fields
.field public final synthetic a:Le/i/b/x2;


# direct methods
.method public synthetic constructor <init>(Le/i/b/x2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/k0;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Le/i/b/k0;->a:Le/i/b/x2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Le/i/b/q2/i;

    const/4 v2, 0x2

    new-array v2, v2, [Le/i/b/a2/a;

    new-instance v3, Le/i/b/a2/a;

    new-instance v4, Le/i/b/l;

    invoke-direct {v4, v0}, Le/i/b/l;-><init>(Le/i/b/x2;)V

    const-string v5, "ConsoleHandler"

    invoke-direct {v3, v5, v4}, Le/i/b/a2/a;-><init>(Ljava/lang/String;Ls1/z/b/a;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Le/i/b/a2/a;

    new-instance v4, Le/i/b/b;

    invoke-direct {v4, v0}, Le/i/b/b;-><init>(Le/i/b/x2;)V

    const-string v0, "RemoteHandler"

    invoke-direct {v3, v0, v4}, Le/i/b/a2/a;-><init>(Ljava/lang/String;Ls1/z/b/a;)V

    const/4 v0, 0x1

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Le/i/b/q2/i;-><init>(Ljava/util/List;)V

    return-object v1
.end method
