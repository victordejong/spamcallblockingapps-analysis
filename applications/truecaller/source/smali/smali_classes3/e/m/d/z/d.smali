.class public final Le/m/d/z/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/z/f/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Le/m/d/z/c;->h:Le/m/d/z/i/a;

    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;

    move-result-object v0

    const-class v1, Le/m/d/z/c;

    .line 2
    invoke-virtual {v0}, Le/m/d/g;->a()V

    .line 3
    iget-object v0, v0, Le/m/d/g;->d:Le/m/d/m/t;

    invoke-virtual {v0, v1}, Le/m/d/m/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Le/m/d/z/c;

    return-void
.end method
