.class public final Le/a/h/f/a0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/a0;-><init>(Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;Lcom/truecaller/settings/CallingSettings;Ls1/w/f;Ls1/w/f;Le/a/l4/c;Le/a/q2/a;Le/a/p5/c;Le/a/b0/e/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/f/a0;


# direct methods
.method public constructor <init>(Le/a/h/f/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/h/f/a0$c;->a:Le/a/h/f/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/f/a0$c;->a:Le/a/h/f/a0;

    .line 2
    iget-object v1, v0, Le/a/h/f/a0;->m:Le/a/p5/s0/v;

    .line 3
    invoke-static {v0}, Le/a/h/f/a0;->Ij(Le/a/h/f/a0;)Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/a/p5/s0/v;->a(Ljava/lang/Object;)V

    return-void
.end method
