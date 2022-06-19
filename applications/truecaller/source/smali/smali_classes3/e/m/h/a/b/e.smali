.class public final synthetic Le/m/h/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final a:Le/m/d/m/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/h/a/b/e;

    invoke-direct {v0}, Le/m/h/a/b/e;-><init>()V

    sput-object v0, Le/m/h/a/b/e;->a:Le/m/d/m/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Le/m/h/a/c/c$a;

    .line 2
    invoke-interface {p1, v0}, Le/m/d/m/p;->c(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    .line 3
    new-instance v0, Le/m/h/a/c/c;

    invoke-direct {v0, p1}, Le/m/h/a/c/c;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
