.class public final enum Le/m/h/a/d/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/h/a/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/h/a/d/f$a;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum a:Le/m/h/a/d/f$a;

.field public static final synthetic b:[Le/m/h/a/d/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/m/h/a/d/f$a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Le/m/h/a/d/f$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/m/h/a/d/f$a;->a:Le/m/h/a/d/f$a;

    const/4 v1, 0x1

    new-array v1, v1, [Le/m/h/a/d/f$a;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Le/m/h/a/d/f$a;->b:[Le/m/h/a/d/f$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Le/m/h/a/d/f$a;
    .locals 1

    .line 1
    sget-object v0, Le/m/h/a/d/f$a;->b:[Le/m/h/a/d/f$a;

    invoke-virtual {v0}, [Le/m/h/a/d/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/h/a/d/f$a;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Le/m/h/a/d/f;->a()Le/m/h/a/d/f;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/m/h/a/d/f;->a:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
