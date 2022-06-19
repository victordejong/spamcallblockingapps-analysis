.class public final Le/a/h/f/m;
.super Le/a/i/n;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/h/f/q;

.field public final synthetic b:Le/a/i/f0/c;


# direct methods
.method public constructor <init>(Le/a/h/f/q;Le/a/i/f0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/h/f/m;->a:Le/a/h/f/q;

    iput-object p2, p0, Le/a/h/f/m;->b:Le/a/i/f0/c;

    invoke-direct {p0}, Le/a/i/n;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/f/m;->a:Le/a/h/f/q;

    iget-object v1, p0, Le/a/h/f/m;->b:Le/a/i/f0/c;

    invoke-interface {v1}, Le/a/i/f0/c;->g()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/h/f/q;->a(Ljava/util/Set;)V

    return-void
.end method
