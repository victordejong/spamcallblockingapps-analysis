.class final synthetic Lcom/google/firebase/inappmessaging/j0/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/e;


# static fields
.field private static final f:Lcom/google/firebase/inappmessaging/j0/c2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/c2;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/c2;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/j0/c2;->f:Lcom/google/firebase/inappmessaging/j0/c2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Li/c/y/e;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/j0/c2;->f:Lcom/google/firebase/inappmessaging/j0/c2;

    return-object v0
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/j0/i2;->J(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
