.class public abstract Ls1/z/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/z/c/b$a;
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field public transient a:Ls1/a/b;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ls1/z/c/b$a;->a:Ls1/z/c/b$a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ls1/z/c/b;->c:Ljava/lang/Class;

    .line 5
    iput-object v0, p0, Ls1/z/c/b;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Ls1/z/c/b;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Ls1/z/c/b;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Ls1/z/c/b;->c:Ljava/lang/Class;

    .line 11
    iput-object p3, p0, Ls1/z/c/b;->d:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Ls1/z/c/b;->e:Ljava/lang/String;

    .line 13
    iput-boolean p5, p0, Ls1/z/c/b;->f:Z

    return-void
.end method


# virtual methods
.method public abstract b()Ls1/a/b;
.end method

.method public compute()Ls1/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/z/c/b;->a:Ls1/a/b;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls1/z/c/b;->b()Ls1/a/b;

    move-result-object v0

    .line 3
    iput-object v0, p0, Ls1/z/c/b;->a:Ls1/a/b;

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/z/c/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ls1/a/e;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/z/c/b;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Ls1/z/c/b;->f:Z

    if-eqz v1, :cond_1

    .line 2
    sget-object v1, Ls1/z/c/d0;->a:Ls1/z/c/e0;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ls1/z/c/e0;->c(Ljava/lang/Class;Ljava/lang/String;)Ls1/a/e;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/z/c/b;->e:Ljava/lang/String;

    return-object v0
.end method
