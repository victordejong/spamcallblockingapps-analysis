.class public abstract Le/f/a/n/o/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/f/a/n/o/k;

.field public static final b:Le/f/a/n/o/k;

.field public static final c:Le/f/a/n/o/k;

.field public static final d:Le/f/a/n/o/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/n/o/k$a;

    invoke-direct {v0}, Le/f/a/n/o/k$a;-><init>()V

    sput-object v0, Le/f/a/n/o/k;->a:Le/f/a/n/o/k;

    .line 2
    new-instance v0, Le/f/a/n/o/k$b;

    invoke-direct {v0}, Le/f/a/n/o/k$b;-><init>()V

    sput-object v0, Le/f/a/n/o/k;->b:Le/f/a/n/o/k;

    .line 3
    new-instance v0, Le/f/a/n/o/k$c;

    invoke-direct {v0}, Le/f/a/n/o/k$c;-><init>()V

    sput-object v0, Le/f/a/n/o/k;->c:Le/f/a/n/o/k;

    .line 4
    new-instance v0, Le/f/a/n/o/k$d;

    invoke-direct {v0}, Le/f/a/n/o/k$d;-><init>()V

    sput-object v0, Le/f/a/n/o/k;->d:Le/f/a/n/o/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c(Le/f/a/n/a;)Z
.end method

.method public abstract d(ZLe/f/a/n/a;Le/f/a/n/c;)Z
.end method
