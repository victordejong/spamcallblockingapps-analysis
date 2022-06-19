.class final Lcom/google/firebase/installations/q/a$b;
.super Lcom/google/firebase/installations/q/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/q/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/firebase/installations/q/f;

.field private e:Lcom/google/firebase/installations/q/d$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/installations/q/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/installations/q/d;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/firebase/installations/q/a;

    iget-object v1, p0, Lcom/google/firebase/installations/q/a$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/installations/q/a$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/installations/q/a$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/installations/q/a$b;->d:Lcom/google/firebase/installations/q/f;

    iget-object v5, p0, Lcom/google/firebase/installations/q/a$b;->e:Lcom/google/firebase/installations/q/d$b;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/installations/q/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/installations/q/f;Lcom/google/firebase/installations/q/d$b;Lcom/google/firebase/installations/q/a$a;)V

    return-object v7
.end method

.method public b(Lcom/google/firebase/installations/q/f;)Lcom/google/firebase/installations/q/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/q/a$b;->d:Lcom/google/firebase/installations/q/f;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/firebase/installations/q/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/q/a$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/firebase/installations/q/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/q/a$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lcom/google/firebase/installations/q/d$b;)Lcom/google/firebase/installations/q/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/q/a$b;->e:Lcom/google/firebase/installations/q/d$b;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/firebase/installations/q/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/q/a$b;->a:Ljava/lang/String;

    return-object p0
.end method
