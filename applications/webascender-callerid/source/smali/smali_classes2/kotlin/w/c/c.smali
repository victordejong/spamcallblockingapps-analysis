.class public abstract Lkotlin/w/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/a0/a;
.implements Ljava/io/Serializable;


# instance fields
.field private transient f:Lkotlin/a0/a;

.field protected final g:Ljava/lang/Object;

.field private final h:Ljava/lang/Class;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Z


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/w/c/c;->g:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lkotlin/w/c/c;->h:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Lkotlin/w/c/c;->i:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lkotlin/w/c/c;->j:Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Lkotlin/w/c/c;->k:Z

    return-void
.end method


# virtual methods
.method public a()Lkotlin/a0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/w/c/c;->f:Lkotlin/a0/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlin/w/c/c;->b()Lkotlin/a0/a;

    .line 3
    iput-object p0, p0, Lkotlin/w/c/c;->f:Lkotlin/a0/a;

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method protected abstract b()Lkotlin/a0/a;
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/w/c/c;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/w/c/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lkotlin/a0/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/w/c/c;->h:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lkotlin/w/c/c;->k:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lkotlin/w/c/r;->c(Ljava/lang/Class;)Lkotlin/a0/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/w/c/r;->b(Ljava/lang/Class;)Lkotlin/a0/b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/w/c/c;->j:Ljava/lang/String;

    return-object v0
.end method
