.class public Lp/a/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/security/SecureRandom;

.field private n:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A()Ljava/security/SecureRandom;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a/a/b$a;->m:Ljava/security/SecureRandom;

    return-object v0
.end method

.method private B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a/a/b$a;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lp/a/a/b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/a/a/b$a;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lp/a/a/b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/a/a/b$a;->p()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lp/a/a/b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/a/a/b$a;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lp/a/a/b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/a/a/b$a;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lp/a/a/b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/a/a/b$a;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lp/a/a/b$a;)Ljavax/crypto/spec/IvParameterSpec;
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/a/a/b$a;->u()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lp/a/a/b$a;)Ljava/security/SecureRandom;
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/a/a/b$a;->A()Ljava/security/SecureRandom;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lp/a/a/b$a;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/a/a/b$a;->o()I

    move-result p0

    return p0
.end method

.method static synthetic i(Lp/a/a/b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/a/a/b$a;->z()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lp/a/a/b$a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/a/a/b$a;->y()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lp/a/a/b$a;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/a/a/b$a;->s()I

    move-result p0

    return p0
.end method

.method static synthetic l(Lp/a/a/b$a;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lp/a/a/b$a;->x()I

    move-result p0

    return p0
.end method

.method private n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a/a/b$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method private o()I
    .locals 1

    .line 1
    iget v0, p0, Lp/a/a/b$a;->c:I

    return v0
.end method

.method private p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a/a/b$a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;[B)Lp/a/a/b$a;
    .locals 1

    .line 1
    new-instance v0, Lp/a/a/b$a;

    invoke-direct {v0}, Lp/a/a/b$a;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lp/a/a/b$a;->H([B)Lp/a/a/b$a;

    .line 3
    invoke-virtual {v0, p0}, Lp/a/a/b$a;->J(Ljava/lang/String;)Lp/a/a/b$a;

    .line 4
    invoke-virtual {v0, p1}, Lp/a/a/b$a;->M(Ljava/lang/String;)Lp/a/a/b$a;

    const/16 p0, 0x80

    .line 5
    invoke-virtual {v0, p0}, Lp/a/a/b$a;->L(I)Lp/a/a/b$a;

    const-string p0, "AES"

    .line 6
    invoke-virtual {v0, p0}, Lp/a/a/b$a;->K(Ljava/lang/String;)Lp/a/a/b$a;

    const-string p0, "UTF8"

    .line 7
    invoke-virtual {v0, p0}, Lp/a/a/b$a;->E(Ljava/lang/String;)Lp/a/a/b$a;

    const/4 p0, 0x1

    .line 8
    invoke-virtual {v0, p0}, Lp/a/a/b$a;->G(I)Lp/a/a/b$a;

    const-string p0, "SHA1"

    .line 9
    invoke-virtual {v0, p0}, Lp/a/a/b$a;->F(Ljava/lang/String;)Lp/a/a/b$a;

    const/4 p0, 0x0

    .line 10
    invoke-virtual {v0, p0}, Lp/a/a/b$a;->D(I)Lp/a/a/b$a;

    const-string p0, "AES/CBC/PKCS5Padding"

    .line 11
    invoke-virtual {v0, p0}, Lp/a/a/b$a;->C(Ljava/lang/String;)Lp/a/a/b$a;

    const-string p0, "SHA1PRNG"

    .line 12
    invoke-virtual {v0, p0}, Lp/a/a/b$a;->P(Ljava/lang/String;)Lp/a/a/b$a;

    const-string p0, "PBKDF2WithHmacSHA1"

    .line 13
    invoke-virtual {v0, p0}, Lp/a/a/b$a;->N(Ljava/lang/String;)Lp/a/a/b$a;

    return-object v0
.end method

.method private r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a/a/b$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method private s()I
    .locals 1

    .line 1
    iget v0, p0, Lp/a/a/b$a;->d:I

    return v0
.end method

.method private t()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a/a/b$a;->a:[B

    return-object v0
.end method

.method private u()Ljavax/crypto/spec/IvParameterSpec;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a/a/b$a;->n:Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method

.method private v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a/a/b$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method private w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a/a/b$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method private x()I
    .locals 1

    .line 1
    iget v0, p0, Lp/a/a/b$a;->b:I

    return v0
.end method

.method private y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a/a/b$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/a/a/b$a;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public C(Ljava/lang/String;)Lp/a/a/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lp/a/a/b$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public D(I)Lp/a/a/b$a;
    .locals 0

    .line 1
    iput p1, p0, Lp/a/a/b$a;->c:I

    return-object p0
.end method

.method public E(Ljava/lang/String;)Lp/a/a/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lp/a/a/b$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public F(Ljava/lang/String;)Lp/a/a/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lp/a/a/b$a;->k:Ljava/lang/String;

    return-object p0
.end method

.method public G(I)Lp/a/a/b$a;
    .locals 0

    .line 1
    iput p1, p0, Lp/a/a/b$a;->d:I

    return-object p0
.end method

.method public H([B)Lp/a/a/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lp/a/a/b$a;->a:[B

    return-object p0
.end method

.method public I(Ljavax/crypto/spec/IvParameterSpec;)Lp/a/a/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lp/a/a/b$a;->n:Ljavax/crypto/spec/IvParameterSpec;

    return-object p0
.end method

.method public J(Ljava/lang/String;)Lp/a/a/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lp/a/a/b$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public K(Ljava/lang/String;)Lp/a/a/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lp/a/a/b$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public L(I)Lp/a/a/b$a;
    .locals 0

    .line 1
    iput p1, p0, Lp/a/a/b$a;->b:I

    return-object p0
.end method

.method public M(Ljava/lang/String;)Lp/a/a/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lp/a/a/b$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public N(Ljava/lang/String;)Lp/a/a/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lp/a/a/b$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public O(Ljava/security/SecureRandom;)Lp/a/a/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lp/a/a/b$a;->m:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public P(Ljava/lang/String;)Lp/a/a/b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lp/a/a/b$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public m()Lp/a/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lp/a/a/b$a;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp/a/a/b$a;->O(Ljava/security/SecureRandom;)Lp/a/a/b$a;

    .line 2
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0}, Lp/a/a/b$a;->t()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, v0}, Lp/a/a/b$a;->I(Ljavax/crypto/spec/IvParameterSpec;)Lp/a/a/b$a;

    .line 3
    new-instance v0, Lp/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lp/a/a/b;-><init>(Lp/a/a/b$a;Lp/a/a/a;)V

    return-object v0
.end method
