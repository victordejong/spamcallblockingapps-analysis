.class public abstract Le/k/a/c/g0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/g0/o$f;,
        Le/k/a/c/g0/o$d;,
        Le/k/a/c/g0/o$c;,
        Le/k/a/c/g0/o$b;,
        Le/k/a/c/g0/o$e;,
        Le/k/a/c/g0/o$a;
    }
.end annotation


# static fields
.field public static final b:Le/k/a/c/n0/b;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/g0/o$c;

    invoke-direct {v0}, Le/k/a/c/g0/o$c;-><init>()V

    sput-object v0, Le/k/a/c/g0/o;->b:Le/k/a/c/n0/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/g0/o;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;
.end method

.method public abstract b()Le/k/a/c/g0/p;
.end method

.method public abstract c()Le/k/a/c/n0/b;
.end method

.method public abstract d(Ljava/lang/annotation/Annotation;)Z
.end method
