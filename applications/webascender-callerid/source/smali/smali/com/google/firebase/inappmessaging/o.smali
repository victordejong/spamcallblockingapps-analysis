.class final synthetic Lcom/google/firebase/inappmessaging/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/e;


# static fields
.field private static final a:Lcom/google/firebase/inappmessaging/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/o;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/o;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/o;->a:Lcom/google/firebase/inappmessaging/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/tasks/e;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/o;->a:Lcom/google/firebase/inappmessaging/o;

    return-object v0
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/q;->e(Ljava/lang/String;)V

    return-void
.end method
