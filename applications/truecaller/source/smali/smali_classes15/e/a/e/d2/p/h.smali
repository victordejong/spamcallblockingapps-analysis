.class public final Le/a/e/d2/p/h;
.super Le/a/b3/c;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/bottombar/BottomBarButtonType;

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/b3/c;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/bottombar/BottomBarButtonType;->HOME:Lcom/truecaller/bottombar/BottomBarButtonType;

    iput-object v0, p0, Le/a/e/d2/p/h;->a:Lcom/truecaller/bottombar/BottomBarButtonType;

    const v0, 0x7f120771

    .line 3
    iput v0, p0, Le/a/e/d2/p/h;->b:I

    const v0, 0x7f08072b

    .line 4
    iput v0, p0, Le/a/e/d2/p/h;->c:I

    const v0, 0x7f08072a

    .line 5
    iput v0, p0, Le/a/e/d2/p/h;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/e/d2/p/h;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/e/d2/p/h;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f120771

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/e/d2/p/h;->b:I

    return v0
.end method

.method public e()Lcom/truecaller/bottombar/BottomBarButtonType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/d2/p/h;->a:Lcom/truecaller/bottombar/BottomBarButtonType;

    return-object v0
.end method
