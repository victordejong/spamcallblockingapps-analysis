.class public final Lq3/b/l/l/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/b/l/l/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public final c:Ljava/lang/StringBuilder;

.field public final d:Lq3/b/l/a;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;Lq3/b/l/a;)V
    .locals 1

    const-string v0, "sb"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lq3/b/l/l/p$a;->d:Lq3/b/l/a;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lq3/b/l/l/p$a;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lq3/b/l/l/p$a;->b:Z

    .line 2
    iget-object v1, p0, Lq3/b/l/l/p$a;->d:Lq3/b/l/a;

    .line 3
    iget-object v1, v1, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    .line 4
    iget-boolean v1, v1, Lq3/b/l/l/c;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "\n"

    .line 5
    invoke-virtual {p0, v1}, Lq3/b/l/l/p$a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Lq3/b/l/l/p$a;->a:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lq3/b/l/l/p$a;->d:Lq3/b/l/a;

    .line 7
    iget-object v2, v2, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    .line 8
    iget-object v2, v2, Lq3/b/l/l/c;->f:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lq3/b/l/l/p$a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/b/l/l/p$a;->d:Lq3/b/l/a;

    .line 2
    iget-object v0, v0, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    .line 3
    iget-boolean v0, v0, Lq3/b/l/l/c;->e:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    .line 4
    iget-object v1, p0, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
