.class public Le/k/a/c/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/u$a;
    }
.end annotation


# static fields
.field public static final h:Le/k/a/c/u;

.field public static final i:Le/k/a/c/u;

.field public static final j:Le/k/a/c/u;


# instance fields
.field public final a:Ljava/lang/Boolean;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/lang/String;

.field public final transient e:Le/k/a/c/u$a;

.field public f:Le/k/a/a/j0;

.field public g:Le/k/a/a/j0;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v8, Le/k/a/c/u;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Le/k/a/c/u;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Le/k/a/c/u$a;Le/k/a/a/j0;Le/k/a/a/j0;)V

    sput-object v8, Le/k/a/c/u;->h:Le/k/a/c/u;

    .line 2
    new-instance v0, Le/k/a/c/u;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Le/k/a/c/u;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Le/k/a/c/u$a;Le/k/a/a/j0;Le/k/a/a/j0;)V

    sput-object v0, Le/k/a/c/u;->i:Le/k/a/c/u;

    .line 3
    new-instance v0, Le/k/a/c/u;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Le/k/a/c/u;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Le/k/a/c/u$a;Le/k/a/a/j0;Le/k/a/a/j0;)V

    sput-object v0, Le/k/a/c/u;->j:Le/k/a/c/u;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Le/k/a/c/u$a;Le/k/a/a/j0;Le/k/a/a/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/u;->a:Ljava/lang/Boolean;

    .line 3
    iput-object p2, p0, Le/k/a/c/u;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Le/k/a/c/u;->c:Ljava/lang/Integer;

    if-eqz p4, :cond_0

    .line 5
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p4, 0x0

    :cond_1
    iput-object p4, p0, Le/k/a/c/u;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Le/k/a/c/u;->e:Le/k/a/c/u$a;

    .line 7
    iput-object p6, p0, Le/k/a/c/u;->f:Le/k/a/a/j0;

    .line 8
    iput-object p7, p0, Le/k/a/c/u;->g:Le/k/a/a/j0;

    return-void
.end method

.method public static a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Le/k/a/c/u;
    .locals 9

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    if-nez p0, :cond_1

    .line 1
    sget-object p0, Le/k/a/c/u;->j:Le/k/a/c/u;

    return-object p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Le/k/a/c/u;->h:Le/k/a/c/u;

    goto :goto_0

    :cond_2
    sget-object p0, Le/k/a/c/u;->i:Le/k/a/c/u;

    :goto_0
    return-object p0

    .line 3
    :cond_3
    :goto_1
    new-instance v8, Le/k/a/c/u;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Le/k/a/c/u;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Le/k/a/c/u$a;Le/k/a/a/j0;Le/k/a/a/j0;)V

    return-object v8
.end method


# virtual methods
.method public b(Le/k/a/c/u$a;)Le/k/a/c/u;
    .locals 9

    .line 1
    new-instance v8, Le/k/a/c/u;

    iget-object v1, p0, Le/k/a/c/u;->a:Ljava/lang/Boolean;

    iget-object v2, p0, Le/k/a/c/u;->b:Ljava/lang/String;

    iget-object v3, p0, Le/k/a/c/u;->c:Ljava/lang/Integer;

    iget-object v4, p0, Le/k/a/c/u;->d:Ljava/lang/String;

    iget-object v6, p0, Le/k/a/c/u;->f:Le/k/a/a/j0;

    iget-object v7, p0, Le/k/a/c/u;->g:Le/k/a/a/j0;

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Le/k/a/c/u;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Le/k/a/c/u$a;Le/k/a/a/j0;Le/k/a/a/j0;)V

    return-object v8
.end method

.method public c(Le/k/a/a/j0;Le/k/a/a/j0;)Le/k/a/c/u;
    .locals 9

    .line 1
    new-instance v8, Le/k/a/c/u;

    iget-object v1, p0, Le/k/a/c/u;->a:Ljava/lang/Boolean;

    iget-object v2, p0, Le/k/a/c/u;->b:Ljava/lang/String;

    iget-object v3, p0, Le/k/a/c/u;->c:Ljava/lang/Integer;

    iget-object v4, p0, Le/k/a/c/u;->d:Ljava/lang/String;

    iget-object v5, p0, Le/k/a/c/u;->e:Le/k/a/c/u$a;

    move-object v0, v8

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Le/k/a/c/u;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Le/k/a/c/u$a;Le/k/a/a/j0;Le/k/a/a/j0;)V

    return-object v8
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/u;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Le/k/a/c/u;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Le/k/a/c/u;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Le/k/a/c/u;->e:Le/k/a/c/u$a;

    if-nez v0, :cond_2

    iget-object v0, p0, Le/k/a/c/u;->f:Le/k/a/a/j0;

    if-nez v0, :cond_2

    iget-object v0, p0, Le/k/a/c/u;->g:Le/k/a/a/j0;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Le/k/a/c/u;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Le/k/a/c/u;->j:Le/k/a/c/u;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Le/k/a/c/u;->h:Le/k/a/c/u;

    goto :goto_0

    :cond_1
    sget-object v0, Le/k/a/c/u;->i:Le/k/a/c/u;

    :goto_0
    return-object v0

    :cond_2
    return-object p0
.end method
