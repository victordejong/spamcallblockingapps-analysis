.class public Le/f/a/n/n/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/n/f$b;
    }
.end annotation


# static fields
.field public static final b:Le/f/a/n/n/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/n/e$a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/f/a/n/n/e$a<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/n/n/f$a;

    invoke-direct {v0}, Le/f/a/n/n/f$a;-><init>()V

    sput-object v0, Le/f/a/n/n/f;->b:Le/f/a/n/n/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/f/a/n/n/f;->a:Ljava/util/Map;

    return-void
.end method
