.class public Le/f/a/n/p/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/p/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/p/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/n/p/o<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Le/f/a/n/p/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/p/v$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/n/p/v$a;

    invoke-direct {v0}, Le/f/a/n/p/v$a;-><init>()V

    sput-object v0, Le/f/a/n/p/v$a;->a:Le/f/a/n/p/v$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Le/f/a/n/p/r;)Le/f/a/n/p/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/p/r;",
            ")",
            "Le/f/a/n/p/n<",
            "TModel;TModel;>;"
        }
    .end annotation

    .line 1
    sget-object p1, Le/f/a/n/p/v;->a:Le/f/a/n/p/v;

    return-object p1
.end method
