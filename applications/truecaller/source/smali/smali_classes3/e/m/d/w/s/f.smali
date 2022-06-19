.class public abstract Le/m/d/w/s/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/d/w/s/f$a;,
        Le/m/d/w/s/f$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Le/m/d/w/s/f$a;
    .locals 3

    .line 1
    new-instance v0, Le/m/d/w/s/b$b;

    invoke-direct {v0}, Le/m/d/w/s/b$b;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Le/m/d/w/s/b$b;->b(J)Le/m/d/w/s/f$a;

    return-object v0
.end method


# virtual methods
.method public abstract b()Le/m/d/w/s/f$b;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()J
.end method
