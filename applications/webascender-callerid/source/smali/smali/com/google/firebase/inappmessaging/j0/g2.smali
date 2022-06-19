.class final synthetic Lcom/google/firebase/inappmessaging/j0/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final f:Lcom/google/firebase/inappmessaging/j0/g2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/j0/g2;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/j0/g2;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/j0/g2;->f:Lcom/google/firebase/inappmessaging/j0/g2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/j0/g2;->f:Lcom/google/firebase/inappmessaging/j0/g2;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lg/f/e/a/a/a/c;

    check-cast p2, Lg/f/e/a/a/a/c;

    invoke-static {p1, p2}, Lcom/google/firebase/inappmessaging/j0/i2;->a(Lg/f/e/a/a/a/c;Lg/f/e/a/a/a/c;)I

    move-result p1

    return p1
.end method
