.class final Lcom/hiya/stingray/manager/g4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/g4;->e()Li/c/b0/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/s<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/hiya/stingray/manager/g4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/g4$a;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/g4$a;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/g4$a;->a:Lcom/hiya/stingray/manager/g4$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/q<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->i()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    const-string v1, "FirebaseInstanceId.getInstance()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->j()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/g4$a$a;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/manager/g4$a$a;-><init>(Li/c/b0/b/q;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->h(Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/manager/g4$a$b;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/manager/g4$a$b;-><init>(Li/c/b0/b/q;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->f(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-interface {p1, v0}, Li/c/b0/b/q;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
