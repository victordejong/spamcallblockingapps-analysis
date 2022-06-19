.class final Lg/g/b/a/j/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/h;->a(Ljava/lang/String;Ljava/lang/Short;Z)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/j/h;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Z

.field final synthetic i:Ljava/lang/Short;


# direct methods
.method constructor <init>(Lg/g/b/a/j/h;Ljava/lang/String;ZLjava/lang/Short;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/j/h$a;->f:Lg/g/b/a/j/h;

    iput-object p2, p0, Lg/g/b/a/j/h$a;->g:Ljava/lang/String;

    iput-boolean p3, p0, Lg/g/b/a/j/h$a;->h:Z

    iput-object p4, p0, Lg/g/b/a/j/h$a;->i:Ljava/lang/Short;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lg/g/b/a/j/h$a;->f:Lg/g/b/a/j/h;

    invoke-static {v0}, Lg/g/b/a/j/h;->c(Lg/g/b/a/j/h;)Lg/g/b/b/d/a;

    move-result-object v0

    .line 2
    new-instance v10, Lg/g/b/c/g;

    .line 3
    iget-object v2, p0, Lg/g/b/a/j/h$a;->g:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 5
    iget-boolean v5, p0, Lg/g/b/a/j/h$a;->h:Z

    .line 6
    iget-object v6, p0, Lg/g/b/a/j/h$a;->i:Ljava/lang/Short;

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, v10

    .line 7
    invoke-direct/range {v1 .. v9}, Lg/g/b/c/g;-><init>(Ljava/lang/String;JZLjava/lang/Short;IILkotlin/w/c/g;)V

    .line 8
    iget-object v1, p0, Lg/g/b/a/j/h$a;->f:Lg/g/b/a/j/h;

    iget-object v2, p0, Lg/g/b/a/j/h$a;->g:Ljava/lang/String;

    iget-object v3, p0, Lg/g/b/a/j/h$a;->i:Ljava/lang/Short;

    invoke-static {v1, v2, v3}, Lg/g/b/a/j/h;->d(Lg/g/b/a/j/h;Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v10, v1}, Lg/g/b/b/d/a;->c(Lg/g/b/c/g;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to add to deny list"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
