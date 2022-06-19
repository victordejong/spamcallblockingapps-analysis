.class public final Le/a/a/f/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/f/b;
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
.field public final a:Le/a/a/f/b;


# direct methods
.method public constructor <init>(Le/a/a/f/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/f/b$b;->a:Le/a/a/f/b;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/f/b$b;->a:Le/a/a/f/b;

    .line 2
    new-instance v14, Le/a/a/f/f;

    .line 3
    iget-object v1, v0, Le/a/a/f/b;->a:Le/a/a/f/c;

    iget-object v2, v0, Le/a/a/f/b;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v2

    const-string v3, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "actorsThreads"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v2}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v2

    const-string v1, "actorsThreads.ui()"

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, v0, Le/a/a/f/b;->a:Le/a/a/f/c;

    .line 8
    iget-object v4, v1, Le/a/a/f/c;->a:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 9
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v1, v0, Le/a/a/f/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v5

    .line 11
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v1, v0, Le/a/a/f/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v6

    .line 13
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v1, v0, Le/a/a/f/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->t1()Le/a/r2/f;

    move-result-object v7

    .line 15
    invoke-static {v7, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v1, v0, Le/a/a/f/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v8

    .line 17
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v1, v0, Le/a/a/f/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->d3()Le/a/r2/f;

    move-result-object v9

    .line 19
    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v1, v0, Le/a/a/f/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v10

    .line 21
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v1, v0, Le/a/a/f/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v11

    .line 23
    invoke-static {v11, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v1, v0, Le/a/a/f/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v12

    .line 25
    invoke-static {v12, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v1, v0, Le/a/a/f/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v13

    .line 27
    invoke-static {v13, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v0, v0, Le/a/a/f/b;->a:Le/a/a/f/c;

    .line 29
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "ImGroupInfoTable.getContentUri()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v14

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v0

    .line 31
    invoke-direct/range {v1 .. v13}, Le/a/a/f/f;-><init>(Le/a/r2/j;Lcom/truecaller/messaging/data/types/ImGroupInfo;Le/a/r2/f;Le/a/p5/c0;Le/a/r2/f;Le/a/a/k/a/a/q;Le/a/r2/f;Le/a/r2/f;Le/a/q2/a;Le/a/a/i0;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v14
.end method
