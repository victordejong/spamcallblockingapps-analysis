.class public final synthetic Le/m/d/y/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic a:Le/m/d/y/z0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/y/z0;

    invoke-direct {v0}, Le/m/d/y/z0;-><init>()V

    sput-object v0, Le/m/d/y/z0;->a:Le/m/d/y/z0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
