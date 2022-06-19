.class final Lcom/hiya/stingray/t/a$a;
.super Lcom/hiya/stingray/t/n$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/t/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/hiya/stingray/t/n;
    .locals 9

    .line 1
    new-instance v8, Lcom/hiya/stingray/t/o;

    iget-object v1, p0, Lcom/hiya/stingray/t/a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/hiya/stingray/t/a$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/hiya/stingray/t/a$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/hiya/stingray/t/a$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/hiya/stingray/t/a$a;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/hiya/stingray/t/a$a;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/hiya/stingray/t/a$a;->g:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/hiya/stingray/t/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public b(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/a$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/a$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/a$a;->d:Ljava/lang/String;

    return-object p0
.end method
