.class public Lio/realm/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lio/realm/internal/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Thread;

.field public static final c:Lio/realm/internal/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lio/realm/internal/g;->a:Ljava/lang/ref/ReferenceQueue;

    .line 2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lio/realm/internal/e;

    invoke-direct {v2, v0}, Lio/realm/internal/e;-><init>(Ljava/lang/ref/ReferenceQueue;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lio/realm/internal/g;->b:Ljava/lang/Thread;

    .line 3
    new-instance v0, Lio/realm/internal/g;

    invoke-direct {v0}, Lio/realm/internal/g;-><init>()V

    sput-object v0, Lio/realm/internal/g;->c:Lio/realm/internal/g;

    const-string v0, "RealmFinalizingDaemon"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/realm/internal/h;)V
    .locals 2

    .line 1
    new-instance v0, Lio/realm/internal/NativeObjectReference;

    sget-object v1, Lio/realm/internal/g;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/internal/NativeObjectReference;-><init>(Lio/realm/internal/g;Lio/realm/internal/h;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
