.class final Lcom/google/firebase/auth/r0;
.super Lcom/google/firebase/auth/s$b;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/firebase/auth/s$b;

.field final synthetic c:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/s$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/r0;->c:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lcom/google/firebase/auth/r0;->b:Lcom/google/firebase/auth/s$b;

    invoke-direct {p0}, Lcom/google/firebase/auth/s$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/firebase/auth/s$a;)V
    .locals 1

    iget-object p2, p0, Lcom/google/firebase/auth/r0;->b:Lcom/google/firebase/auth/s$b;

    iget-object v0, p0, Lcom/google/firebase/auth/r0;->c:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->q(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/internal/w0;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/w0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/firebase/auth/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/q;

    move-result-object p1

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/s$b;->c(Lcom/google/firebase/auth/q;)V

    return-void
.end method

.method public final c(Lcom/google/firebase/auth/q;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/r0;->b:Lcom/google/firebase/auth/s$b;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/s$b;->c(Lcom/google/firebase/auth/q;)V

    return-void
.end method

.method public final d(Lcom/google/firebase/FirebaseException;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/r0;->b:Lcom/google/firebase/auth/s$b;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/s$b;->d(Lcom/google/firebase/FirebaseException;)V

    return-void
.end method
