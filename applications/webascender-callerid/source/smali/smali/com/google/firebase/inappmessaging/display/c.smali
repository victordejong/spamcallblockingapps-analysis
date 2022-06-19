.class final synthetic Lcom/google/firebase/inappmessaging/display/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/h;


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/c;->a:Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;

    return-void
.end method

.method public static b(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;)Lcom/google/firebase/components/h;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/display/c;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/display/c;-><init>(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/c;->a:Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;->access$lambda$0(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;Lcom/google/firebase/components/e;)Lcom/google/firebase/inappmessaging/display/b;

    move-result-object p1

    return-object p1
.end method
