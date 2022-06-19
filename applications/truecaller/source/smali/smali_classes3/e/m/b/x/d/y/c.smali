.class public final Le/m/b/x/d/y/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/m/b/x/d/y/c$a;

    invoke-direct {v0}, Le/m/b/x/d/y/c$a;-><init>()V

    sput-object v0, Le/m/b/x/d/y/c;->a:Ljava/lang/ThreadLocal;

    return-void
.end method
