.class final synthetic Lcom/google/firebase/inappmessaging/j0/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/b;


# static fields
.field private static final a:Lcom/google/firebase/inappmessaging/j0/k1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/k1;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/k1;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/j0/k1;->a:Lcom/google/firebase/inappmessaging/j0/k1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Li/c/y/b;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/j0/k1;->a:Lcom/google/firebase/inappmessaging/j0/k1;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/google/firebase/installations/k;

    invoke-static {p1, p2}, Lcom/google/firebase/inappmessaging/j0/k2;->a(Ljava/lang/String;Lcom/google/firebase/installations/k;)Lcom/google/firebase/inappmessaging/j0/k2;

    move-result-object p1

    return-object p1
.end method
