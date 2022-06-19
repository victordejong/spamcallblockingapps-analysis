.class final synthetic Lcom/google/firebase/inappmessaging/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/h;


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/w;->a:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;

    return-void
.end method

.method public static b(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;)Lcom/google/firebase/components/h;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/w;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/w;-><init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/w;->a:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->access$lambda$0(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;Lcom/google/firebase/components/e;)Lcom/google/firebase/inappmessaging/q;

    move-result-object p1

    return-object p1
.end method
