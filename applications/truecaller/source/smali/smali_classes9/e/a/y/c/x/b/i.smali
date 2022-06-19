.class public final Le/a/y/c/x/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lu3/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/y/c/x/b/a;


# direct methods
.method public constructor <init>(Le/a/y/c/x/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/c/x/b/i;->a:Le/a/y/c/x/b/a;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/c/x/b/i;->a:Le/a/y/c/x/b/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Le/a/b0/b/g/b;

    invoke-direct {v0}, Le/a/b0/b/g/b;-><init>()V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Le/a/b0/b/g/b;->e(Z)Le/a/b0/b/g/b;

    .line 5
    invoke-virtual {v0, v1}, Le/a/b0/b/g/b;->d(Z)Le/a/b0/b/g/b;

    .line 6
    invoke-static {v0}, Le/a/b0/b/a/a;->b(Le/a/b0/b/g/b;)Lu3/e0$a;

    move-result-object v0

    const-string v1, "flash_client"

    .line 7
    invoke-static {v1}, Le/a/n/g0;->F(Ljava/lang/String;)Ljava/util/List;

    .line 8
    new-instance v1, Lu3/e0;

    invoke-direct {v1, v0}, Lu3/e0;-><init>(Lu3/e0$a;)V

    return-object v1
.end method
