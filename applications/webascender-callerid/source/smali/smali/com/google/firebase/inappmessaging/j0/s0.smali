.class final synthetic Lcom/google/firebase/inappmessaging/j0/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/y/d;


# static fields
.field private static final f:Lcom/google/firebase/inappmessaging/j0/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/s0;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/s0;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/j0/s0;->f:Lcom/google/firebase/inappmessaging/j0/s0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Li/c/y/d;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/j0/s0;->f:Lcom/google/firebase/inappmessaging/j0/s0;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/f/e/a/a/a/e/a;

    invoke-virtual {p1}, Lg/f/e/a/a/a/e/a;->Z()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
