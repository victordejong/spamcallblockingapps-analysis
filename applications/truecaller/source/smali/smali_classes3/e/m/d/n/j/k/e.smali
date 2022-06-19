.class public Le/m/d/n/j/k/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/d/n/j/k/e$b;
    }
.end annotation


# static fields
.field public static final c:Le/m/d/n/j/k/e$b;


# instance fields
.field public final a:Le/m/d/n/j/n/f;

.field public b:Le/m/d/n/j/k/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/m/d/n/j/k/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/m/d/n/j/k/e$b;-><init>(Le/m/d/n/j/k/e$a;)V

    sput-object v0, Le/m/d/n/j/k/e;->c:Le/m/d/n/j/k/e$b;

    return-void
.end method

.method public constructor <init>(Le/m/d/n/j/n/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/n/j/k/e;->a:Le/m/d/n/j/n/f;

    .line 3
    sget-object p1, Le/m/d/n/j/k/e;->c:Le/m/d/n/j/k/e$b;

    iput-object p1, p0, Le/m/d/n/j/k/e;->b:Le/m/d/n/j/k/c;

    return-void
.end method

.method public constructor <init>(Le/m/d/n/j/n/f;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Le/m/d/n/j/k/e;->a:Le/m/d/n/j/n/f;

    .line 6
    sget-object p1, Le/m/d/n/j/k/e;->c:Le/m/d/n/j/k/e$b;

    iput-object p1, p0, Le/m/d/n/j/k/e;->b:Le/m/d/n/j/k/c;

    .line 7
    invoke-virtual {p0, p2}, Le/m/d/n/j/k/e;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/d/n/j/k/e;->b:Le/m/d/n/j/k/c;

    invoke-interface {v0}, Le/m/d/n/j/k/c;->b()V

    .line 2
    sget-object v0, Le/m/d/n/j/k/e;->c:Le/m/d/n/j/k/e$b;

    iput-object v0, p0, Le/m/d/n/j/k/e;->b:Le/m/d/n/j/k/c;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/d/n/j/k/e;->a:Le/m/d/n/j/n/f;

    const-string v1, "userlog"

    invoke-virtual {v0, p1, v1}, Le/m/d/n/j/n/f;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/high16 v0, 0x10000

    .line 4
    new-instance v1, Le/m/d/n/j/k/j;

    invoke-direct {v1, p1, v0}, Le/m/d/n/j/k/j;-><init>(Ljava/io/File;I)V

    iput-object v1, p0, Le/m/d/n/j/k/e;->b:Le/m/d/n/j/k/c;

    return-void
.end method
