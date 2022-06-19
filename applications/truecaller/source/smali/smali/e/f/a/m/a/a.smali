.class public final Le/f/a/m/a/a;
.super Le/f/a/p/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/a/p/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Le/f/a/c;Le/f/a/g;)V
    .locals 1

    .line 1
    const-class p1, Le/f/a/n/p/g;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Le/f/a/m/a/c$a;

    invoke-direct {v0}, Le/f/a/m/a/c$a;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Le/f/a/g;->j(Ljava/lang/Class;Ljava/lang/Class;Le/f/a/n/p/o;)Le/f/a/g;

    return-void
.end method
