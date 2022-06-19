.class public Le/i/b/z1/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/z1/e0;


# direct methods
.method public constructor <init>(Le/i/b/z1/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/z1/h0;->a:Le/i/b/z1/e0;

    return-void
.end method


# virtual methods
.method public a(Le/i/b/z1/b0;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Le/i/b/z1/h0$a;

    invoke-direct {v0, p0}, Le/i/b/z1/h0$a;-><init>(Le/i/b/z1/h0;)V

    invoke-virtual {p1, p2, v0}, Le/i/b/z1/b0;->b(Ljava/lang/String;Le/i/b/z1/z;)V

    return-void
.end method
