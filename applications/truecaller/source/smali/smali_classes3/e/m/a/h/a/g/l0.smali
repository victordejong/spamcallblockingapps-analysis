.class public final enum Le/m/a/h/a/g/l0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/g/e0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/a/h/a/g/l0;",
        ">;",
        "Le/m/a/h/a/g/e0;"
    }
.end annotation


# static fields
.field public static final enum a:Le/m/a/h/a/g/l0;

.field public static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/m/a/h/a/g/f0;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic c:[Le/m/a/h/a/g/l0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Le/m/a/h/a/g/l0;

    .line 1
    invoke-direct {v0}, Le/m/a/h/a/g/l0;-><init>()V

    sput-object v0, Le/m/a/h/a/g/l0;->a:Le/m/a/h/a/g/l0;

    const/4 v1, 0x1

    new-array v1, v1, [Le/m/a/h/a/g/l0;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Le/m/a/h/a/g/l0;->c:[Le/m/a/h/a/g/l0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Le/m/a/h/a/g/l0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Le/m/a/h/a/g/l0;
    .locals 1

    sget-object v0, Le/m/a/h/a/g/l0;->c:[Le/m/a/h/a/g/l0;

    .line 1
    invoke-virtual {v0}, [Le/m/a/h/a/g/l0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/a/h/a/g/l0;

    return-object v0
.end method


# virtual methods
.method public final a()Le/m/a/h/a/g/f0;
    .locals 1

    sget-object v0, Le/m/a/h/a/g/l0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/h/a/g/f0;

    return-object v0
.end method
