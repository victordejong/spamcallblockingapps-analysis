.class public Lcom/google/firebase/inappmessaging/j0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/w0;

.field private final b:Lcom/google/firebase/inappmessaging/j0/r3/a;

.field private final c:Lcom/google/firebase/inappmessaging/j0/l3;

.field private final d:Lcom/google/firebase/inappmessaging/j0/j3;

.field private final e:Lcom/google/firebase/inappmessaging/j0/k;

.field private final f:Lcom/google/firebase/inappmessaging/model/m;

.field private final g:Lcom/google/firebase/inappmessaging/j0/q2;

.field private final h:Lcom/google/firebase/inappmessaging/j0/n;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/j0/w0;Lcom/google/firebase/inappmessaging/j0/r3/a;Lcom/google/firebase/inappmessaging/j0/l3;Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/j0/k;Lcom/google/firebase/inappmessaging/model/m;Lcom/google/firebase/inappmessaging/j0/q2;Lcom/google/firebase/inappmessaging/j0/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/t;->a:Lcom/google/firebase/inappmessaging/j0/w0;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/t;->b:Lcom/google/firebase/inappmessaging/j0/r3/a;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/j0/t;->c:Lcom/google/firebase/inappmessaging/j0/l3;

    .line 5
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/j0/t;->d:Lcom/google/firebase/inappmessaging/j0/j3;

    .line 6
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/j0/t;->e:Lcom/google/firebase/inappmessaging/j0/k;

    .line 7
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/j0/t;->f:Lcom/google/firebase/inappmessaging/model/m;

    .line 8
    iput-object p7, p0, Lcom/google/firebase/inappmessaging/j0/t;->g:Lcom/google/firebase/inappmessaging/j0/q2;

    .line 9
    iput-object p8, p0, Lcom/google/firebase/inappmessaging/j0/t;->h:Lcom/google/firebase/inappmessaging/j0/n;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/inappmessaging/model/i;Ljava/lang/String;)Lcom/google/firebase/inappmessaging/t;
    .locals 12

    .line 1
    new-instance v11, Lcom/google/firebase/inappmessaging/j0/h0;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/t;->a:Lcom/google/firebase/inappmessaging/j0/w0;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/j0/t;->b:Lcom/google/firebase/inappmessaging/j0/r3/a;

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/j0/t;->c:Lcom/google/firebase/inappmessaging/j0/l3;

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/j0/t;->d:Lcom/google/firebase/inappmessaging/j0/j3;

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/j0/t;->e:Lcom/google/firebase/inappmessaging/j0/k;

    iget-object v6, p0, Lcom/google/firebase/inappmessaging/j0/t;->f:Lcom/google/firebase/inappmessaging/model/m;

    iget-object v7, p0, Lcom/google/firebase/inappmessaging/j0/t;->g:Lcom/google/firebase/inappmessaging/j0/q2;

    iget-object v8, p0, Lcom/google/firebase/inappmessaging/j0/t;->h:Lcom/google/firebase/inappmessaging/j0/n;

    move-object v0, v11

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/firebase/inappmessaging/j0/h0;-><init>(Lcom/google/firebase/inappmessaging/j0/w0;Lcom/google/firebase/inappmessaging/j0/r3/a;Lcom/google/firebase/inappmessaging/j0/l3;Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/j0/k;Lcom/google/firebase/inappmessaging/model/m;Lcom/google/firebase/inappmessaging/j0/q2;Lcom/google/firebase/inappmessaging/j0/n;Lcom/google/firebase/inappmessaging/model/i;Ljava/lang/String;)V

    return-object v11
.end method
