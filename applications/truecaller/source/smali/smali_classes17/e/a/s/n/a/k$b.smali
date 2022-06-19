.class public final Le/a/s/n/a/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/s/n/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/a/s/n/a/k;


# direct methods
.method public constructor <init>(Le/a/s/n/a/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/s/n/a/k$b;->a:Le/a/s/n/a/k;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/s/n/a/k$b;->a:Le/a/s/n/a/k;

    .line 2
    new-instance v1, Le/a/s/n/a/j;

    iget-object v2, v0, Le/a/s/n/a/k;->a:Le/a/s/b;

    invoke-interface {v2}, Le/a/s/e$a;->e()Ls1/w/f;

    move-result-object v2

    const-string v3, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v4, v0, Le/a/s/n/a/k;->a:Le/a/s/b;

    invoke-interface {v4}, Le/a/s/b;->g3()Le/a/s/s/c;

    move-result-object v4

    .line 5
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v0, v0, Le/a/s/n/a/k;->a:Le/a/s/b;

    invoke-interface {v0}, Le/a/s/b;->r6()Le/a/s/s/e;

    move-result-object v0

    .line 7
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-direct {v1, v2, v4, v0}, Le/a/s/n/a/j;-><init>(Ls1/w/f;Le/a/s/s/c;Le/a/s/s/e;)V

    return-object v1
.end method
