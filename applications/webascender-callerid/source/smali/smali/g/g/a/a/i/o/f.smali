.class public final Lg/g/a/a/i/o/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/a/i/o/h;


# instance fields
.field private final firebaseToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "firebaseToken"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "firebaseToken"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/i/o/f;->firebaseToken:Ljava/lang/String;

    const-string p1, "FirebaseTokenGrant"

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/o/f;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getFirebaseToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/f;->firebaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/f;->type:Ljava/lang/String;

    return-object v0
.end method
