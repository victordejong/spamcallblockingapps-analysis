.class final synthetic Lcom/google/firebase/iid/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/h;


# static fields
.field static final a:Lcom/google/firebase/components/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/iid/t;

    invoke-direct {v0}, Lcom/google/firebase/iid/t;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/t;->a:Lcom/google/firebase/components/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/iid/Registrar;->lambda$getComponents$1$Registrar(Lcom/google/firebase/components/e;)Lcom/google/firebase/iid/f0/a;

    move-result-object p1

    return-object p1
.end method
