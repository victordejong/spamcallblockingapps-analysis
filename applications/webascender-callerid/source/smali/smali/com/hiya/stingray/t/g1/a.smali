.class public Lcom/hiya/stingray/t/g1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/g1/a$b;
    }
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/hiya/stingray/util/i$a;

.field private f:Lcom/hiya/stingray/util/i$b;

.field private g:Lg/g/c/a/c/a/b;

.field private h:Ljava/lang/String;

.field private i:Lcom/hiya/stingray/q/c/g/a;

.field private j:Lg/g/a/a/i/k/f;

.field private k:Lg/g/a/a/i/k/a;

.field private l:Z


# direct methods
.method private constructor <init>(Lcom/hiya/stingray/t/g1/a$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/hiya/stingray/t/g1/a$b;->a(Lcom/hiya/stingray/t/g1/a$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hiya/stingray/t/g1/a;->a:J

    .line 4
    invoke-static {p1}, Lcom/hiya/stingray/t/g1/a$b;->b(Lcom/hiya/stingray/t/g1/a$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/hiya/stingray/t/g1/a;->c:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/hiya/stingray/t/g1/a$b;->e(Lcom/hiya/stingray/t/g1/a$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hiya/stingray/t/g1/a;->d:Z

    .line 6
    invoke-static {p1}, Lcom/hiya/stingray/t/g1/a$b;->f(Lcom/hiya/stingray/t/g1/a$b;)Lcom/hiya/stingray/util/i$b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/t/g1/a;->f:Lcom/hiya/stingray/util/i$b;

    .line 7
    invoke-static {p1}, Lcom/hiya/stingray/t/g1/a$b;->g(Lcom/hiya/stingray/t/g1/a$b;)Lcom/hiya/stingray/util/i$a;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/t/g1/a;->e:Lcom/hiya/stingray/util/i$a;

    .line 8
    invoke-static {p1}, Lcom/hiya/stingray/t/g1/a$b;->h(Lcom/hiya/stingray/t/g1/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/t/g1/a;->h:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/hiya/stingray/t/g1/a$b;->i(Lcom/hiya/stingray/t/g1/a$b;)Lg/g/c/a/c/a/b;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lg/g/c/a/c/a/b;

    iput-object v0, p0, Lcom/hiya/stingray/t/g1/a;->g:Lg/g/c/a/c/a/b;

    .line 10
    invoke-static {p1}, Lcom/hiya/stingray/t/g1/a$b;->j(Lcom/hiya/stingray/t/g1/a$b;)Lg/g/a/a/i/k/f;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/t/g1/a;->j:Lg/g/a/a/i/k/f;

    .line 11
    invoke-static {p1}, Lcom/hiya/stingray/t/g1/a$b;->k(Lcom/hiya/stingray/t/g1/a$b;)Lg/g/a/a/i/k/a;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/t/g1/a;->k:Lg/g/a/a/i/k/a;

    .line 12
    invoke-static {p1}, Lcom/hiya/stingray/t/g1/a$b;->l(Lcom/hiya/stingray/t/g1/a$b;)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/t/g1/a;->b:I

    .line 13
    invoke-static {p1}, Lcom/hiya/stingray/t/g1/a$b;->c(Lcom/hiya/stingray/t/g1/a$b;)Lcom/hiya/stingray/q/c/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/t/g1/a;->i:Lcom/hiya/stingray/q/c/g/a;

    .line 14
    invoke-static {p1}, Lcom/hiya/stingray/t/g1/a$b;->d(Lcom/hiya/stingray/t/g1/a$b;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hiya/stingray/t/g1/a;->l:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/stingray/t/g1/a$b;Lcom/hiya/stingray/t/g1/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/t/g1/a;-><init>(Lcom/hiya/stingray/t/g1/a$b;)V

    return-void
.end method

.method public static m()Lcom/hiya/stingray/t/g1/a$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/g1/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/t/g1/a$b;-><init>(Lcom/hiya/stingray/t/g1/a$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Lg/g/a/a/i/k/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/g1/a;->k:Lg/g/a/a/i/k/a;

    return-object v0
.end method

.method public b()Lcom/hiya/stingray/util/i$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/g1/a;->e:Lcom/hiya/stingray/util/i$a;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/t/g1/a;->b:I

    return v0
.end method

.method public d()Lcom/hiya/stingray/q/c/g/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/g1/a;->i:Lcom/hiya/stingray/q/c/g/a;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/g1/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lg/g/c/a/c/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/g1/a;->g:Lg/g/c/a/c/a/b;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/g1/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/hiya/stingray/util/i$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/g1/a;->f:Lcom/hiya/stingray/util/i$b;

    return-object v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/t/g1/a;->a:J

    return-wide v0
.end method

.method public j()Lg/g/a/a/i/k/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/g1/a;->j:Lg/g/a/a/i/k/f;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/t/g1/a;->l:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/t/g1/a;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hiya/stingray/t/g1/a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nphone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/g1/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nisContact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hiya/stingray/t/g1/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ndirection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/g1/a;->e:Lcom/hiya/stingray/util/i$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ntermination: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/g1/a;->f:Lcom/hiya/stingray/util/i$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nprofileTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/g1/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nphoneWithMeta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/g1/a;->g:Lg/g/c/a/c/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nuserDisposition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/g1/a;->j:Lg/g/a/a/i/k/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nduration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hiya/stingray/t/g1/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nclientDisposition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/g1/a;->k:Lg/g/a/a/i/k/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\neventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/g1/a;->i:Lcom/hiya/stingray/q/c/g/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nisBlackListed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hiya/stingray/t/g1/a;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
