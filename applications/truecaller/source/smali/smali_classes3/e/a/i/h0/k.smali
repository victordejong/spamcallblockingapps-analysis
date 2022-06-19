.class public final Le/a/i/h0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/g;

.field public static final b:Ls1/g;

.field public static final c:Le/a/i/h0/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/i/h0/k;

    invoke-direct {v0}, Le/a/i/h0/k;-><init>()V

    sput-object v0, Le/a/i/h0/k;->c:Le/a/i/h0/k;

    .line 2
    sget-object v0, Le/a/i/h0/k$b;->b:Le/a/i/h0/k$b;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/i/h0/k;->a:Ls1/g;

    .line 3
    sget-object v0, Le/a/i/h0/k$a;->b:Le/a/i/h0/k$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/i/h0/k;->b:Ls1/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/i/h0/k;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
